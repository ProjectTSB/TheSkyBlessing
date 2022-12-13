#> asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
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
        data modify storage lib: Argument.Damage set value 60
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの雷により丸焦げになった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @e[type=marker,tag=1A.SkillThunderMaker,distance=..0.01,sort=nearest,limit=1]