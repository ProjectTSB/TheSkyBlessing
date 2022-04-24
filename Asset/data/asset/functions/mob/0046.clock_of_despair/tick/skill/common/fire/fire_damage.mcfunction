#> asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 演出
    particle minecraft:explosion ~ ~ ~ 1 1 1 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 30
    particle minecraft:lava ~ ~ ~ 1 1 1 0.42 30

    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 50.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# キル
    kill @e[type=area_effect_cloud,tag=1A.SkillFireMaker,sort=nearest,limit=1]