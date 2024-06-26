p list1 = [1, 2, 3] #配列
# [index].指数とval
p list1[0]
p list1[1] = 4
p list1

#hash
#辞書式を拡張
p "d".to_sym # => :dを シンボル

p hash1 = {'d'=> 1, :a => 2, b: 3} #hash, separatorはカンマ, b:
# exit

p hash1['d']  #引数は１個だけ
p hash1[:a]
p hash1[:b]
hash1['c'.to_sym] = 4
p hash1
