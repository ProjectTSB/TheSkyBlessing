#> asset:sacred_treasure/0669.blizzard_armor/9.attack
#
#
#
# @within function asset:sacred_treasure/0669.blizzard_armor/8.attack_trigger

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle dust 1 1000000000 1000000000 1.5 ~ ~1.5 ~ 0.5 0.5 0.5 0 60 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run playsound block.glass.break master @a ~ ~ ~ 1.5 2 0

# 水魔法属性攻撃
    data modify storage lib: Argument.Damage set value 6.0d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/
    data remove storage lib: Argument
