#> asset:mob/0182.skull_raven/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0182.skull_raven/attack/1.trigger

# 演出
   execute at @p[tag=Victim,distance=..60] run particle minecraft:lava ~ ~0.5 ~ 0.8 0.8 0.8 0.1 20 normal @p
   execute at @p[tag=Victim,distance=..60] run playsound minecraft:entity.blaze.shoot hostile @p ~ ~ ~ 0.8 0.8 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 16.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって燃え尽き、灰となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって魂諸共焼失した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim,distance=..60] run function lib:damage/
# リセット
    function lib:damage/reset