#> asset:mob/0078.messenger_of_thunder/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/attack/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 250
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.5 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.5 0 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20d
    execute if entity @s[tag=26.HPLess50Per] run data modify storage lib: Argument.Damage set value 27.5d

# ハードならダメージ増加
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 27.5d
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=26.HPLess50Per] run data modify storage lib: Argument.Damage set value 32d

    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# 実行
    execute as @p[tag=Victim,distance=..50] run function lib:damage/
# リセット
    function lib:damage/reset
