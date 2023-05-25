#> asset:artifact/1026.brinicle_cocytus/trigger/brinicle/main
#
# ループ処理
#
# @within function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/loop

# 演出
    function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/tornado/main
    particle snowflake ~ ~0.1 ~ 4 0.05 4 0.05 6 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 4 0.05 4 0.05 6 normal @a

    scoreboard players operation $Temp Temporary = @s SI.Tick
    scoreboard players operation $Temp Temporary %= $12 Const
    execute if score $Temp Temporary matches 0 run function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/vfx
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s SI.Tick 1

# 消滅
    execute if entity @s[scores={SI.Tick=200000..}] run kill @s

# ループ
    schedule function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/loop 1t replace