#> asset:sacred_treasure/0690.neptune_trident/4.fullset_attack
#
#
#
# @within function asset:sacred_treasure/0690.neptune_trident/2.check_condition

# 演出 as @e[tag=!Victim]なのは意図的です
    execute at @e[type=#lib:living,tag=Victim] as @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] run particle splash ~ ~1.2 ~ 0.3 0 0.3 0 50 normal @a

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~35の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $36 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 55
# ダメージセット
    execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute at @e[type=#lib:living,tag=Victim] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function lib:damage/
    data remove storage lib: Argument
