#> asset:mob/0185.tutankhamen/tick/thunder/07.damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 25.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value ['{"translate": "%1$sは%2$sの蒼雷によって滅せられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}']
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# マナ減少
    scoreboard players set $Fluctuation Lib -24
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] run function lib:mp/fluctuation
