#> asset:mob/0185.tutankhamen/tick/magic_square/09.3rd_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/04.3rd_square

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 40f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの溢れる魔力に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 対象
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function lib:damage/
# リセット
    function lib:damage/reset