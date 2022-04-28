#> asset:mob/0237.lunatic_mage/skill/elemental_kill/06.fire
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage

# 火を使い始める
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick
# 4tickおきに実行
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score @s 6L.Tick matches 61.. if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/elemental_kill/07.shoot_fire
# リセット
    scoreboard players reset $Interval
