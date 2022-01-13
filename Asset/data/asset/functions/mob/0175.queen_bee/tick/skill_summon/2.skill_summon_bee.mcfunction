#> asset:mob/0175.queen_bee/tick/skill_summon/2.skill_summon_bee
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_summon/1.skill_summon

# 演出
    playsound entity.bee.death hostile @a ~ ~ ~ 1 1
    execute rotated ~ 0 positioned ^ ^ ^1.4 run particle minecraft:poof ~ ~-0.3 ~ 0.3 0.3 0.3 0.05 30

# モブを出す
    data modify storage api: Argument.ID set value 176
    function api:mob/summon