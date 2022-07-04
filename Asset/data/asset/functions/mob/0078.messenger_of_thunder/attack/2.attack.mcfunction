#> asset:mob/0078.messenger_of_thunder/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..32] run particle dust 1 1 0 1.3 ~ ~3 ~ 0.25 2.5 0.25 0 80 normal @a
    execute at @p[tag=Victim,distance=..32] run particle dust 0.3 0.3 0.3 2 ~ ~6 ~ 1 0.3 1 0 40 normal @a
    execute at @p[tag=Victim,distance=..32] run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 2.0 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 4.0d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの轟雷により力尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# 実行
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset
