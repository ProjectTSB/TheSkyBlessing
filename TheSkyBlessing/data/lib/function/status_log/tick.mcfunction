#> lib:status_log/tick
#
#
#
# @within function core:tick/

# 位置をどんどん上げてく
    tp @s ~ ~0.01 ~
# 一定tickで削除する
    scoreboard players add @s LogRemoveTime 1
    execute if score @s LogRemoveTime matches 40.. run kill @s