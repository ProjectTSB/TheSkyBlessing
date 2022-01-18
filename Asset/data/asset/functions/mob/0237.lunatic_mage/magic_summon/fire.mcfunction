#> asset:mob/0237.lunatic_mage/magic_summon/fire
#
# 火魔法を召喚します
#
# @within function asset:mob/0237.lunatic_mage/skill/**

# 召喚
    data modify storage api: Argument.ID set value 188
    function api:mob/summon
    tp @e[type=marker,tag=58.Init,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ 0