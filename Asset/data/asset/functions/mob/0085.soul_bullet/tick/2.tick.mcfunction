#> asset:mob/0085.soul_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0085.soul_bullet/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# 演出
    particle soul ~ ~ ~ 0 0 0 0 1 normal @a
    particle soul ^ ^ ^0.25 0 0 0 0 1 normal @a
    particle soul ^ ^ ^0.5 0 0 0 0 1 normal @a
    particle soul ^ ^ ^0.75 0 0 0 0 1 normal @a
    particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 2 normal @a

# 定期的に追加で演出
    scoreboard players operation $Temp Temporary = @s 2D.Tick
    scoreboard players operation $Temp Temporary %= $5 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0085.soul_bullet/tick/vfx
    execute if score $Temp Temporary matches 0 run playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0.5 0
    execute if score $Temp Temporary matches 0 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.15 1.8 0
    scoreboard players reset $Temp Temporary

# tp
    tp @s ^ ^ ^0.8

# スコア
    scoreboard players add @s 2D.Tick 1

# ヒット
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[gamemode=!spectator,dx=0] run function asset:mob/0085.soul_bullet/tick/3.hit

# 消滅
    execute if entity @s[scores={2D.Tick=40..}] run kill @s
    execute unless block ^ ^ ^0.8 #lib:no_collision run kill @s