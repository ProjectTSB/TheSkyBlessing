#> asset:mob/0237.lunatic_mage/skill/elemental_confine/5.fire
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 火を使い始める
# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
# 4tickおきに実行
    scoreboard players operation $Temp Temporary %= $4 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/7.fire_shoot
# 回転
    execute if score $Temp Temporary matches 0 run tp @s ~ ~ ~ ~-15 ~
# リセット
    scoreboard players reset $Temp Temporary