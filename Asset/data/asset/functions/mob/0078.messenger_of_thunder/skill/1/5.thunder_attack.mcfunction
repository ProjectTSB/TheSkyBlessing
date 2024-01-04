#> asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/skill/1/1

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 200
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 200
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 20

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.4 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.4 0 0

# ダメージ
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,sort=nearest,limit=1]