#> asset:mob/0214.water_magic/tick/05.damage
#
#
#
# @within function asset:mob/0214.water_magic/tick/04.damage_and_vfx

# ダメージ
    data modify storage lib: Argument.Damage set value 21f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
     data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value ['[{"translate": "%1$sは%2$sに飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]','[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    data modify storage lib: Argument.DeathMessage append value ['[{"translate": "%1$sは%2$sに飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]','[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
# 補正
    function lib:damage/modifier
# ダメージ
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
# リセット
    data remove storage lib: Argument
