#> asset:sacred_treasure/0679.kitsunebi_armor/12.hurt
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/11.hurt_trigger

# 演出
    particle flame ~ ~1.2 ~ 1 0.5 1 0 100 normal @a
    particle soul_fire_flame ~ ~1.2 ~ 1 0.5 1 0 100 normal @a
    playsound block.fire.ambient master @a ~ ~ ~ 1 0.5 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 10.0d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=!Uninterferable,distance=..1.5] run function lib:damage/
    data remove storage lib: Argument

