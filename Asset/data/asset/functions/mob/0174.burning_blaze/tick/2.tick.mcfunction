#> asset:mob/0174.burning_blaze/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0174.burning_blaze/tick/1.trigger

#> private
# @private
    #declare score_holder $Random
    #declare score_holder $Probability

# 演出
    particle falling_lava ~ ~0.8 ~ 0.5 0.5 0.5 0 10 force @a
    particle dust 1 0.149 0 1 ~ ~0.7 ~ 0.3 0.3 0.3 0 10 force @a

# 行動決定乱数生成
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $900 Const

# 各行動の処理
    execute if score @s 4U.NowAction matches 1 run function asset:mob/0174.burning_blaze/action/rush.tick
    execute if score @s 4U.NowAction matches 2 run function asset:mob/0174.burning_blaze/action/laser.tick

# 行動決定
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..32] if score $Random Temporary matches 0..5 if score @s 4U.ActionTime matches ..0 run function asset:mob/0174.burning_blaze/action/rush
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..32] if score $Random Temporary matches 6..10 if score @s 4U.ActionTime matches ..0 run function asset:mob/0174.burning_blaze/action/laser

# バニラ火球を置き換え
    execute if entity @e[type=small_fireball,distance=..3] run function asset:mob/0174.burning_blaze/action/shot

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $Probability Temporary