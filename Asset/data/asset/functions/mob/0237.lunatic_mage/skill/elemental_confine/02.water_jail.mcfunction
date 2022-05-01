#> asset:mob/0237.lunatic_mage/skill/elemental_confine/02.water_jail
#
# 水の檻のコマンドだよ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/01.manage

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
# 5tickごとに水の檻を表示
    scoreboard players operation $Temp Temporary %= $6 Const
    execute if score $Temp Temporary matches 0 rotated 0 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/03.water_jail_vfx

# 水の檻のダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=4..9] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/04.water_jail_damage

# 炎弾を範囲内に入ったらキルしたい
    execute if entity @e[type=marker,scores={MobID=188},distance=8..9] run kill @e[type=marker,scores={MobID=188},distance=4..9]