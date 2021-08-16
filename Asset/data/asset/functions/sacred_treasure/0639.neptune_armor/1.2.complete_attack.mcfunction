#> asset:sacred_treasure/0639.neptune_armor/1.2.complete_attack
#
#
#
# @within function asset:sacred_treasure/0639.neptune_armor/1.1.attack_trigger

# 攻撃した時にタグを付与
    tag @s add HS.Attack

# スコア付与
    scoreboard players set @s HS.AttackCool 2

#　演出
    execute at @e[tag=Victim] run particle minecraft:splash ~ ~2 ~ 0.5 2 0.5 0 100 force @a[distance=..40]
    execute at @e[tag=Victim] run playsound entity.dolphin.splash master @a ~ ~ ~ 1 1 0


# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument
