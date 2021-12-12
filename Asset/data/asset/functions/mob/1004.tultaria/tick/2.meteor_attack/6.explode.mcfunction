#> asset:mob/1004.tultaria/tick/2.meteor_attack/6.explode
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/1.meteor_attack

# 演出
    particle minecraft:explosion ~ ~ ~ 3 1 3 0 30
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    particle minecraft:lava ~ ~ ~ 3 1 3 0.42 60

    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
    playsound entity.generic.explode master @a ~ ~ ~ 1 0
    playsound entity.generic.explode master @a[distance=..12] ~ ~ ~ 1 0.5 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..5] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument
