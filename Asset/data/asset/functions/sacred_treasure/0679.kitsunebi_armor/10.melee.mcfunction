#> asset:sacred_treasure/0679.kitsunebi_armor/10.melee
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/9.melee_trigger

# 演出
    execute at @e[type=#lib:living,tag=Victim,distance=..6] as @e[type=#lib:living,tag=!Uninterferable,distance=..3] at @s run particle flame ~ ~1.2 ~ 0.4 0.5 0.4 0 15 normal @a
    execute at @e[type=#lib:living,tag=Victim,distance=..6] as @e[type=#lib:living,tag=!Uninterferable,distance=..3] at @s run particle soul_fire_flame ~ ~1.2 ~ 0.4 0.5 0.4 0 15 normal @a
    execute at @e[type=#lib:living,tag=Victim,distance=..6] as @e[type=#lib:living,tag=!Uninterferable,distance=..3] at @s run playsound block.fire.ambient master @a ~ ~ ~ 1 0.5 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 10.0d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute at @e[type=#lib:living,tag=Victim,distance=..6] as @e[type=#lib:living,tag=!Uninterferable,distance=..3] run function lib:damage/
    data remove storage lib: Argument

