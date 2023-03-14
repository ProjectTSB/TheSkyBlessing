#> asset:mob/0059.jack_o_lantern/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0059.jack_o_lantern/death/1.trigger

# 演出
    particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~1.7 ~ 0.6 0.4 0.6 0 20 normal @a
    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1.5

# 死亡時カボチャ設置
    execute if predicate world_manager:area/02.islands if block ~ ~ ~ #lib:air run summon falling_block ~ ~1.5 ~ {BlockState:{Name:"minecraft:carved_pumpkin"},Time:1,Motion:[0.0,0.7,0.0]}

# ボスドロ
    data modify storage api: Argument.ID set value 950
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id