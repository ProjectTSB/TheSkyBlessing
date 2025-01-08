#> lib:message/tutorial/02.curse
#
# 「◆ 島について
#   この世界に存在する多くの島には呪われた神器が置かれており、島全体が呪われています。
#   その呪われた島々を浄化することがあなた[たち]の目標です。
#   浄化には、呪われた神器の周囲で__動かずに__スニークをし続ける必要があります。」
#
# @within function world_manager:area/00-02.tutorial-curse

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 島について\n","color":"light_purple"},{"text":"この世界に存在する多くの島には呪われた神器が置かれており、島全体が呪われています。\nその呪われた島々を浄化することがあなたの目標です。\n浄化には、呪われた神器の周囲で","color":"white"},{"text":"動かずに","underlined": true,"color":"white"},{"text":"スニークをし続ける必要があります。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 島について\n","color":"light_purple"},{"text":"この世界に存在する多くの島には呪われた神器が置かれており、島全体が呪われています。\nその呪われた島々を浄化することがあなたたちの目標です。\n浄化には、呪われた神器の周囲で","color":"white"},{"text":"動かずに","underlined": true,"color":"white"},{"text":"スニークをし続ける必要があります。","color":"white"}]
