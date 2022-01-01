#> asset:mob/0059.jack_o_lantern/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0059.jack_o_lantern/death/1.trigger

# 演出
    particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~1.7 ~ 0.6 0.4 0.6 0 20 normal @a

# 死亡時カボチャ設置
    execute if predicate world_manager:area/02.islands if block ~ ~ ~ #lib:air run setblock ~ ~ ~ carved_pumpkin