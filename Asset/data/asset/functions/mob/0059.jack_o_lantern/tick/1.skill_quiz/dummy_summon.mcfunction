#> asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/dummy_summon
#
#  周囲に偽物を召喚
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/**

# 召喚
    data modify storage api: Argument.ID set value 224
    function api:mob/summon
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as @e[type=#lib:living,scores={MobID=224},distance=..3,sort=nearest,limit=1] run function lib:spread_entity/