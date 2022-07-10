#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/tick

# 演出
    playsound item.spyglass.use hostile @a ~ ~ ~ 1 1.4

# 再起させる
    scoreboard players add @s 1A.LifeTime 1
    function asset:mob/0046.clock_of_despair/tick/skill/common/beam/loop
    tag @s remove Landing