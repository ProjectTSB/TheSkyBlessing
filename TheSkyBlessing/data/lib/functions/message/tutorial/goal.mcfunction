#> lib:message/tutorial/goal
#
# 「◆ 目標について
#   あなた[たち]の目標はただ一つ。この世界の**全てを浄化**をすることです。」
#
# @within function world_manager:area/01-01.tutorial-goal

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ 目標について\n","color":"light_purple"},{"text":"あなたの目標はただ一つ。この世界の","color":"white"},{"text":"全てを浄化","bold":true,"color":"light_purple"},{"text":"をすることです。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ 目標について\n","color":"light_purple"},{"text":"あなたたちの目標はただ一つ。この世界の","color":"white"},{"text":"全てを浄化","bold":true,"color":"light_purple"},{"text":"をすることです。","color":"white"}]