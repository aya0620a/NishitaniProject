p list1 = [1, 2, 3]
# [index].指数
p list1[0]
p list1[1] = 4
p list1

#hash
#辞書式を拡張
p "d".to_sym # => :d,  シンボル

hash1 = {'d'=> 1, :a=> 2, b:3}
p hash1['d']  #引数は１個だけ
p hash1['c'.to_sym] = 4
p hash1
