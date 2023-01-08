#> asset:mob/0115.jewel_bullet/tick/3.damage
#
#
#
# @within function asset:mob/0115.jewel_bullet/tick/2.tick

# ダメージ
    data modify storage lib: Argument.Damage set value 3.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの宝石の煌びやかさにやられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの宝石の価値に敗北した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# 実行
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# 消滅
    kill @s