#> asset:sacred_treasure/0334.abunai_kine/attack
#
# スマッシュ!
#
# @within function asset:sacred_treasure/0334.abunai_kine/3.main

    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..20]
    particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 25 force @a[distance=..20]
    particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 25 force @a[distance=..20]
    playsound minecraft:entity.wither.break_block neutral @a ~ ~ ~ 2 1
    playsound minecraft:block.anvil.place neutral @a ~ ~ ~ 2 0
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 2 1.5

# 物理、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 300.0f
    data modify storage lib: Argument.AttackType set value "Melee"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/