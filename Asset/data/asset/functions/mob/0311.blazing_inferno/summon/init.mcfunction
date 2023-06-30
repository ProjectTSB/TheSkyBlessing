#> asset:mob/0311.blazing_inferno/summon/init
#
#
#
# @within function asset:mob/0311.blazing_inferno/summon/2.summon

# 降りてくる
    execute at @s run tp @s ~ ~100 ~

# プレイヤーの方を向く
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
