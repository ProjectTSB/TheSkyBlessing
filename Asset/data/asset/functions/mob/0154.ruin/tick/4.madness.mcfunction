#> asset:mob/0154.ruin/tick/4.madness
#
#
#
# @within function asset:mob/0154.ruin/tick/2.tick

# 演出
    particle dust 0.255 0.039 0.039 1 ~ ~1 ~ 0.3 0.3 0.3 1 10

# 効果
    effect give @s speed 1 1

# 発狂して死ぬ
    execute if score @s 4A.MadnessTime matches 370.. run kill @s