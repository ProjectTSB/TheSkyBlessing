#> asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire2
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 火を使い始める
# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
# 5tickおきに実行
    scoreboard players operation $Temp Temporary %= $5 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/6.shoot_fire
# 回転
    execute if score $Temp Temporary matches 0 run tp @s ~ ~ ~ ~-15 ~
# リセット
    scoreboard players reset $Temp Temporary

# 炎弾が範囲外に行ったらキルしたい
    execute if entity @e[type=marker,scores={MobID=188},distance=8..9] run kill @e[type=marker,scores={MobID=188},distance=12..16]