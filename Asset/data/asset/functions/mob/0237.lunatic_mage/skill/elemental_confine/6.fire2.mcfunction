#> asset:mob/0237.lunatic_mage/skill/elemental_confine/6.fire2
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 火を使い始める
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick
# 6tickおきに実行
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/7.fire_shoot
# 回転
    execute if score $Interval Temporary matches 0 run tp @s ~ ~ ~ ~-15 ~
# リセット
    scoreboard players reset $Interval Temporary