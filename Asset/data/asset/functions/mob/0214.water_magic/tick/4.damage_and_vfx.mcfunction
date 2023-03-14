#> asset:mob/0214.water_magic/tick/4.damage_and_vfx
#
#
#
# @within function asset:mob/0214.water_magic/tick/2.tick

# vfx
    execute positioned ~ ~0.3 ~ rotated 0 0 run function asset:mob/0214.water_magic/tick/vfx2

# ダメージ
    data modify storage lib: Argument.Damage set value 24.5f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
     data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより激流に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# ダメージ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run function lib:damage/
# リセット
    function lib:damage/reset