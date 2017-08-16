require 'sinatra'
require_relative 'sum.rb'
get '/' do 
	erb :index
end

post '/name' do
	name =params[:user_name]
	redirect '/age?user_name='+name
end

get '/age' do
	name =params[:user_name]
	erb :get_age, :locals=> {:name=>name}
end

post '/age' do
	age =params[:age]
	name =params[:user_name]
	redirect '/hair?user_name=' + name + '&age=' + age
end

get '/hair' do
	name =params[:user_name]
	age =params[:age]
	erb :hair, :locals=> {:name=>name, :age=>age}
end

post '/hair' do
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	redirect '/eye?username=' + name + '&age='+ age + '&hair=' + hair
end

get '/eye' do 
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	erb :eye, :locals=> {:name=>name, :age=>age, :hair=>hair}
end

post '/eye' do
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	eye =params[:eye]
	redirect '/food?username=' + name + '&age='+ age + '&hair=' + hair + '&eye=' + eye
end

get '/food' do
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	eye =params[:eye]
	erb :food, :locals=>{:name=>name, :age=>age, :hair=>hair, :eye=>eye}
	end

post '/food' do
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	eye =params[:eye]
	food =params[:food]
	redirect '/drank?username=' + name + '&age='+ age + '&hair=' + hair + '&eye=' + eye + '&food=' + food
end

get '/drank' do
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	eye =params[:eye]
	food =params[:food]
	erb :drank, :locals=>{:name=>name, :age=>age, :hair=>hair, :eye=>eye, :food=>food}
	end

post '/drank' do 
	name =params[:user_name]
	age =params[:age]
	hair =params[:hair]
	eye =params[:eye]
	food =params[:food]
	drank =params[:drank]
	redirect '/three_numbers?username=' + name + '&age='+ age + '&hair=' + hair + '&eye=' + eye + '&food=' + food +'&drank=' + drank
	end




get '/three_numbers' do 
	name = params[:user_name]
	age = params[:age]
	hair = params[:hair]
	food = params[:food]
	eye = params[:eye]
	drank = params[:drank]
	erb :three_numbers, :locals=>{:name=>name,:age=>age,:hair=>hair,:eye=>eye,:food=>food,:drank=>drank}
	
end

post "/three_numbers" do
	age = params[:age]
	name = params[:user_name]
	num1 = params[:favnum1]
	num2 = params[:favnum2]
	num3 = params[:favnum3]
	hair = params[:hair]
	eye =params[:eye]
	food =params[:food]
	drank =params[:drank]
	totalnumber = add(num1,num2,num3)

	redirect '/total?user_name=' + name + '&age=' + age + '&hair='+ hair + '&favnum1=' + num1 + '&favnum2=' + num2 + '&favnum3=' + num3 + '&add=' + totalnumber + '&eye=' + eye + '&food=' + food +'&drank=' + drank
	end

get '/total' do
	age = params[:age]
	name = params[:user_name]
	num1 = params[:favnum1]
	num2 = params[:favnum2]
	num3 = params[:favnum3]
	hair = params[:hair]
    totalnumber =params[:add]
    eye =params[:eye]
	food =params[:food]
	drank =params[:drank]
	erb :total, :locals=> {:name => name,:age=>age,:num1=>num1,:num2=>num2,:num3=>num3, :totalnumber=>totalnumber,:hair=>hair, :eye=>eye, :food=>food, :drank=>drank}
end
