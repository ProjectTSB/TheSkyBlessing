#> asset:artifact/0664.soul_fire_armor/trigger/fullset/attack
#
# フルセット時の近接攻撃
#
# @within function asset:artifact/0664.soul_fire_armor/trigger/fullset/attack_trigger

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..64] at @s run function asset:artifact/0664.soul_fire_armor/trigger/fullset/particle
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound block.fire.ambient player @a ~ ~ ~ 2 0.8 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.6 0.4 0

# ダメージ設定
        data modify storage lib: Argument.Damage set value 80.0f
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Fire"
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run function lib:damage/
# リセット
    function lib:damage/reset

# クールタイム設定
    scoreboard players set @s IG.AttackCT 20