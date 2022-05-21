#> asset:mob/0185.tutankhamen/tick/burn_laser/06.damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 36f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって灰塵と化した"},"with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]'
# 対象
    execute as @p[gamemode=!creative,gamemode=!spectator,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset