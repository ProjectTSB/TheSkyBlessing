#> asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
#
# 爆発
#
# @within function asset:mob/1004.tultaria/tick/skill/blazing_slash/tick

# 演出
    particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 1
    particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 5
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.05 10
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset