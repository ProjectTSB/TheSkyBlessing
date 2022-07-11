#> asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/tick

scoreboard players add @s 1A.LifeTime 1

execute if score @s 1A.LifeTime matches ..25 run function asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/vfx
execute if score @s 1A.LifeTime matches 28 run function asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/burst
execute if score @s 1A.LifeTime matches 30 run function asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/damage