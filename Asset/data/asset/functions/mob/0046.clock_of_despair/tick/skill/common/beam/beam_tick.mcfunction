#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick

# 演出
    playsound block.amethyst_block.hit hostile @a ~ ~ ~ 1 1.4

# 再起させる
    function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_loop
    tag @s remove Landing