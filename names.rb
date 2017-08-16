def new_pairs(names)
    random_pairs = []
    paired_names=names.shuffle.each_split(2)
paired_names.each do |pairs|
if pairs.length == 2
    random_pairs << pairs
    else
    random_pairs.last << pairs
    names = ["don","mark","adrian","joe","jon","jim"]
end
end
end

 puts new_pairs


    
