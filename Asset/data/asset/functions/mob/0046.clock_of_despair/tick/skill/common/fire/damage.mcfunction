#> asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage
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
        data modify storage lib: Argument.Damage set value 50
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @e[type=marker,tag=1A.SkillFireMaker,distance=..0.01,sort=nearest,limit=1]