#> lib:health_log/tick
#
#
#
# @within function core:tick/

# 位置をどんどん上げてく
    tp ~ ~0.01 ~
# 一定tickで削除する
    # scoreboard players add @s Time 1
    # execute if score @s Time matches 40.. run kill @s