#> asset:sacred_treasure/0639.neptune_armor/9.attack
#
#
#
# @within function asset:sacred_treasure/0639.neptune_armor/8.attack_trigger

# 攻撃した時にタグを付与
    tag @s add HS.Attack

# スコア付与
    scoreboard players set @s HS.AttackCool 2

#　演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run particle minecraft:splash ~ ~2 ~ 0.5 2 0.5 0 200 force @a[distance=..40]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run particle minecraft:dust 0 0 1 1 ~ ~1.2 ~ 0.3 0.4 0.3 0 50 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run playsound entity.player.splash.high_speed master @a ~ ~ ~ 1 0.9 0

# ダメージ設定
        data modify storage lib: Argument.Damage set value 20.0f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..100] run function lib:damage/
# リセット
    data remove storage lib: Argument