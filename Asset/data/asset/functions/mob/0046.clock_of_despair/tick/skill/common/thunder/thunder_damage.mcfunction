#> asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 演出
    particle dust 1 1 0 3 ~ ~5 ~ 0.1 5 0.1 0 100
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# キル
    kill @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,sort=nearest,limit=1]