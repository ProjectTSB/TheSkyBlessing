#> asset:mob/0214.water_magic/tick/05.damage
#
#
#
# @within function asset:mob/0214.water_magic/tick/04.damage_and_vfx

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 21f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Water"
    # デスログ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sに飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]','[{"translate": "%1$sは%2$sに沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument
