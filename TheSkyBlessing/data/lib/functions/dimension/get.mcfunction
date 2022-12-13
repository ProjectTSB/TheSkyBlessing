#> lib:dimension/get
#
# 実行座標のディメンションを取得します
#
# @output storage lib: Return.Dimension : id(minecraft:dimension)
# @api

execute if predicate lib:dimension/is_overworld run data modify storage lib: Return.Dimension set value "minecraft:overworld"
execute if predicate lib:dimension/is_nether run data modify storage lib: Return.Dimension set value "minecraft:the_nether"
execute if predicate lib:dimension/is_end run data modify storage lib: Return.Dimension set value "minecraft:the_end"