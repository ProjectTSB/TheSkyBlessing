#> asset:mob/1016.divine_sword_red/tick/9.damage
#
# ダメージ
#
# @within function asset:mob/1016.divine_sword_red/tick/7.tick_landed

# 魔法ダメージ
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function lib:damage/

# リセット
    function lib:damage/reset