#> asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/melee
#
# フルセット時の近接攻撃
#
# @within function asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/melee_trigger

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s run function asset:sacred_treasure/0664.soul_fire_armor/trigger/fullset/particle
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s run tp @s @s
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run playsound block.fire.ambient player @a ~ ~ ~ 2 0.8 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.6 0.4 0

# ダメージ設定
        data modify storage lib: Argument.Damage set value 40.0f
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Fire"
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument

# クールタイム設定
    scoreboard players set @s IG.AttackCT 40