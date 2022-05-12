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
    #execute unless entity @e[tag=Enemy,distance=..64,limit=1] run tp @s ~ ~ ~ ~ ~

# 移動
    execute at @s run function asset:mob/0284.meteor_rain_entity/tick/event/move
    execute at @s run function asset:mob/0284.meteor_rain_entity/tick/event/move
    execute at @s run function asset:mob/0284.meteor_rain_entity/tick/event/move
    execute at @s run function asset:mob/0284.meteor_rain_entity/tick/event/move
    particle flame ~ ~ ~ 0.2 0.2 0.2 0 2 force

# ホーミング
    #function asset:mob/0284.meteor_rain_entity/tick/event/homing
# 追尾する
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20] facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~