#> asset:mob/0237.lunatic_mage/skill/elemental_confine/2.water_jail
#
# 水の檻のコマンドだよ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
# 5tickごとに水の檻を表示
    scoreboard players operation $Temp Temporary %= $6 Const
    execute if score $Temp Temporary matches 0 rotated 0 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/3.water_jail_vfx

# 水の檻のダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=4..9] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/4.water_jail_damage