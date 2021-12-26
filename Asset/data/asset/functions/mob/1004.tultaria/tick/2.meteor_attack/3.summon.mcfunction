#> asset:mob/1004.tultaria/tick/2.meteor_attack/3.summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/2.first_tick

# モブを出す
    data modify storage api: Argument.ID set value 1011
    execute positioned ~ ~8 ~ run function api:mob/summon

# 演出
    execute positioned ~ ~0.1 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/particle1

# キル
    kill @s