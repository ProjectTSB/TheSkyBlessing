#> world_manager:area/00-03.1.tutorial-run_through
#
# 前のエリアで解呪してなかったらメッセージとtp
#
# @within function world_manager:area/00-03.tutorial-artifact

function lib:message/tutorial/03.1.run_through
effect give @s slow_falling 1 0 true
tp @s 4206 188 -400
scoreboard players reset $Temp Temporary
