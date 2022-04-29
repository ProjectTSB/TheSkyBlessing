#> asset:mob/0232.honey_leader/tick/8.hit
#
# ヒット処理
#
# @within function asset:mob/0232.honey_leader/tick/6.shoot_and_reset

# 演出
    playsound entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5 0
    playsound block.honey_block.hit hostile @a ~ ~ ~ 1 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 42f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに全身べとべとにされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=zombie,tag=this,scores={MobID=232},distance=..20] run function lib:damage/modifier
# 実行
    execute if entity @s[gamemode=!creative] run function lib:damage/
# リセット
    data remove storage lib: Argument
# デバフ
    effect give @s[gamemode=!creative] poison 3 1 true
    effect give @s[gamemode=!creative] mining_fatigue 3 1 true

# リセット処理
    tag @s remove LandingTarget