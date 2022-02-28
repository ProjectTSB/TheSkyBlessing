#> asset:mob/0211.aurora_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0211.aurora_bullet/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# スコア
    scoreboard players add @s 5V.Tick 1

# 移動
    tp @s ^ ^ ^0.8

# 演出
    scoreboard players operation $Temp Temporary = @s 5V.Tick
    scoreboard players operation $Temp Temporary %= $4 Const
    execute if score $Temp Temporary matches 0 run particle dust 0.000 0.545 1.000 1.5 ~ ~ ~ 0.25 0.25 0.25 0 4 normal
    execute if score $Temp Temporary matches 1 run particle dust 0.000 0.773 0.941 1.5 ~ ~ ~ 0.25 0.25 0.25 0 4 normal
    execute if score $Temp Temporary matches 2 run particle dust 0.000 1.000 0.886 1.5 ~ ~ ~ 0.25 0.25 0.25 0 4 normal
    execute if score $Temp Temporary matches 3 run particle dust 0.000 0.773 0.941 1.5 ~ ~ ~ 0.25 0.25 0.25 0 4 normal
    execute if score $Temp Temporary matches 3 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.2 2 0
    scoreboard players reset $Temp Temporary

# ヒット
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[gamemode=!spectator,dx=0] run function asset:mob/0211.aurora_bullet/tick/3.hit

# 消滅
    execute if entity @s[scores={5V.Tick=60..}] run kill @s