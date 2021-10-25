#> asset:sacred_treasure/0690.neptune_trident/4.fullset_attack
#
#
#
# @within function asset:sacred_treasure/0690.neptune_trident/2.check_condition

# 演出 as @e[tag=!Victim]なのは意図的です
    execute at @e[type=#lib:living,tag=Victim,distance=..6] if entity @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] as @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] at @s run particle splash ~ ~1.2 ~ 0.3 0 0.3 0 80 normal @a
    execute at @e[type=#lib:living,tag=Victim,distance=..6] if entity @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] as @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] at @s run particle minecraft:dust 0 0 1 1 ~ ~1.2 ~ 0.3 0.4 0.3 0 20 normal @a
    execute at @e[type=#lib:living,tag=Victim,distance=..6] if entity @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] as @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] at @s run playsound entity.player.splash.high_speed master @a ~ ~ ~ 0.8 0.9 0

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~35の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $36 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 45
# ダメージセット
    execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute at @e[type=#lib:living,tag=Victim,distance=..6] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function lib:damage/
    data remove storage lib: Argument