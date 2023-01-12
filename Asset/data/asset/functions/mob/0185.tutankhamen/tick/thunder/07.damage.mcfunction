#> asset:mob/0185.tutankhamen/tick/thunder/07.damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 35.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの蒼雷によって滅せられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    # ダメージ
        execute as @e[type=wither_skeleton,tag=this,distance=..40,limit=1] run function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# マナ減少
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0185.tutankhamen/tick/thunder/08.mp_reduce