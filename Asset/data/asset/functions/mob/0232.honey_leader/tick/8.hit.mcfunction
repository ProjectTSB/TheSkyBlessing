#> asset:mob/0232.honey_leader/tick/8.hit
#
# ヒット処理
#
# @within function asset:mob/0232.honey_leader/tick/6.shoot_and_reset

# 演出
    playsound entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5 0
    playsound block.honey_block.hit hostile @a ~ ~ ~ 1 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 40f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに全身べとべとにされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=skeleton,tag=this,distance=..32] run function lib:damage/modifier
# 実行
    function lib:damage/
# リセット
    function lib:damage/reset
# デバフ
    effect give @s mining_fatigue 3 1 true
    execute if predicate api:global_vars/difficulty/max/normal run effect give @s poison 3 1 true
    execute if predicate api:global_vars/difficulty/min/hard run effect give @s wither 3 1 true

# リセット処理
    tag @s remove LandingTarget