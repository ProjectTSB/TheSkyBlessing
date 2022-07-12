#> asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","1A.This","1A.SkillMarker"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d],[15d,15d]]
    execute as @e[type=marker,tag=1A.This,distance=..100,limit=1] run function lib:spread_entity/

# モブを出す
    execute at @e[type=marker,tag=1A.This,distance=..100,limit=1] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon

# キル
    kill @e[type=marker,tag=1A.This,distance=..100]