#> asset:mob/0211.aurora_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0211.aurora_bullet/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# 移動
    tp @s ^ ^ ^0.8

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.8 0 0.235 1 ~ ~ ~ 0.4 0.4 0.4 0 3 normal @a
    scoreboard players operation $Temp Temporary = @s 5V.Tick
    scoreboard players operation $Temp Temporary %= $4 Const
    execute if score $Temp Temporary matches 0 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.2 2 0
    scoreboard players reset $Temp Temporary

# ヒット
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[gamemode=!spectator,dx=0] run function asset:mob/0211.aurora_bullet/tick/3.hit
    
# スコア
    scoreboard players add @s 5V.Tick 1

# 消滅
    execute if entity @s[scores={5V.Tick=60..}] run kill @s
    execute unless block ~ ~ ~ #lib:no_collision run kill @s