#> asset:sacred_treasure/0669.brizzard_armor/9.attack
#
#
#
# @within function asset:sacred_treasure/0669.brizzard_armor/8.attack_trigger

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim] run particle snowflake ~ ~1.5 ~ 2 0.6 2 0 40 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim] run playsound item.elytra.flying master @a ~ ~ ~ 0.8 2 0

# 水魔法属性攻撃
    data modify storage lib: Argument.Damage set value 6.0d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,distance=..4] run function lib:damage/
    data remove storage lib: Argument
