#> asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/summon
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/1.meteor

# 演出
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2

# 召喚
    data modify storage api: Argument.ID set value 54
    function api:mob/summon
# 拡散値
    data modify storage lib: Argument.Bounds set value [[7d,7d],[0d,0d],[7d,7d]]

# 拡散する
    execute as @e[type=#lib:living,scores={MobID=54},distance=..3,sort=nearest,limit=1] run function lib:spread_entity/