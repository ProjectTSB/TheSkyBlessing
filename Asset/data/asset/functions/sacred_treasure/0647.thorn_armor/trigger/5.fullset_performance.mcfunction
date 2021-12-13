#> asset:sacred_treasure/0647.thorn_armor/trigger/5.fullset_performance
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/trigger/4.fullset

# 演出
    particle dust 0 0.2 0 1 ~ ~1.2 ~ 0.4 0.5 0.6 0 80 normal @a
    playsound block.sweet_berry_bush.place master @a ~ ~ ~ 1 0 0

# 少しウィザー
    effect give @s wither 3 0 true

# 少しダメージ
    data modify storage lib: Argument.Damage set value 12.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    function lib:damage/
    data remove storage lib: Argument