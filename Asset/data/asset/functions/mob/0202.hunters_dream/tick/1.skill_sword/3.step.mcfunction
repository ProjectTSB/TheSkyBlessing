#> asset:mob/0202.hunters_dream/tick/1.skill_sword/3.step
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/1.skill_sword/1.skill_sword

# 数値
    data modify storage lib: Argument.VectorMagnitude set value 1.6
# 飛ぶ方向
    execute facing entity @p[gamemode=!spectator] eyes rotated ~-10 ~ run function lib:motion/
# リセット
    data remove storage lib: Argument

# ステップ中に攻撃をしないように弱体化を付与
    effect give @s weakness 1 100 true