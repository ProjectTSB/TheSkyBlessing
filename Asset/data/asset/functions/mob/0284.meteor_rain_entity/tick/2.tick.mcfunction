#> asset:mob/0284.meteor_rain_entity/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0284.meteor_rain_entity/tick/1.trigger

#Init
    execute if entity @s[tag=7W.Init] run function asset:mob/0284.meteor_rain_entity/tick/event/init

# 念のためスコア加算
    scoreboard players add @s 7W.LifeTime 1
    kill @s[scores={7W.LifeTime=120..}]

# 遊動
    execute unless entity @e[tag=Enemy,distance=..64,limit=1] run tp @s ~ ~ ~ ~ ~5

# 移動
    execute at @s run function asset:mob/0284.meteor_rain_entity/tick/event/move
    execute at @s run function asset:mob/0284.meteor_rain_entity/tick/event/move

# ホーミング
    #function asset:mob/0284.meteor_rain_entity/tick/event/homing