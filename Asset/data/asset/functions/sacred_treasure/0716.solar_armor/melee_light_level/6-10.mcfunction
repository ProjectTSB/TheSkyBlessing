#> asset:sacred_treasure/0716.solar_armor/melee_light_level/6-10
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/9.melee

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run particle dust 0 5000 100000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run playsound block.beacon.power_select master @a ~ ~ ~ 0.4 1.5 0


# ダメージ
    data modify storage lib: Argument.Damage set value 8f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/
    data remove storage lib: Argument