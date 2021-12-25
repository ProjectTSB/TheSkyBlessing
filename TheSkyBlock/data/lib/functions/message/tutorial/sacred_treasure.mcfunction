#> lib:message/tutorial/sacred_treasure
#
# 「◆ 神器について
#   この世界には、**神器**と呼ばれるアイテムが存在します。
#   神器にはその名の通り神の力が宿っており、それぞれが特別な力を持ちます。
#   しかしながら、あなた[たち]は全ての神器を使用できるわけではありません。
#   神器を使用するにはその神器のもつ力を受け入れる神を信仰している必要があります。」
#
# @within function world_manager:area/01-03.tutorial-sacred_treasure

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 神器について\n","color":"light_purple"},{"text":"この世界には、","color":"white"},{"text":"神器","bold":true,"color":"light_purple"},{"text":"と呼ばれるアイテムが存在します。\n神器にはその名の通り神の力が宿っており、それぞれが特別な力を持ちます。\nしかしながら、あなたは全ての神器を使用できるわけではありません。\n神器を使用するにはその神器のもつ力を受け入れる神を信仰している必要があります。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 神器について\n","color":"light_purple"},{"text":"この世界には、","color":"white"},{"text":"神器","bold":true,"color":"light_purple"},{"text":"と呼ばれるアイテムが存在します。\n神器にはその名の通り神の力が宿っており、それぞれが特別な力を持ちます。\nしかしながら、あなたたちは全ての神器を使用できるわけではありません。\n神器を使用するにはその神器のもつ力を受け入れる神を信仰している必要があります。","color":"white"}]