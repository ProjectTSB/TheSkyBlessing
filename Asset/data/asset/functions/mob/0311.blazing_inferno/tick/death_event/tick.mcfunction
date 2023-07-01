#> asset:mob/0311.blazing_inferno/tick/death_event/tick
#
# Scheduleループから呼び出されてTickで動く
#
# @within function asset:mob/0311.blazing_inferno/tick/death_event/schedule_loop


# スコア加算
    scoreboard players add @s 8N.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 8N.Tick

# 4tickごとに爆発
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score @s 8N.Tick matches 20.. if score $Interval Temporary matches 0 run function asset:mob/0311.blazing_inferno/tick/death_event/explosion

# パーティクル
    particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]

# シメの大爆発
    execute if score @s 8N.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/death_event/end

# リセット
    scoreboard players reset $Interval Temporary