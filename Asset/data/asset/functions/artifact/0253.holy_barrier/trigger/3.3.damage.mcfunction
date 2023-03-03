#> asset:artifact/0253.holy_barrier/trigger/3.3.damage
#
#
#
# @within function
#   asset:artifact/0253.holy_barrier/trigger/3.main
#   asset:artifact/0253.holy_barrier/trigger/3.3.damage

# ダメージを与える
    data modify storage lib: Argument.Damage set value 9999f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/modifier
    function lib:damage/
    function lib:damage/reset

# まだ息があるようならもう一度ダメージを与える
    execute if entity @s[tag=!Death] run function asset:artifact/0253.holy_barrier/trigger/3.3.damage