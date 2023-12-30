#> asset:mob/0302.call_gun/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0302.call_gun/tick/1.trigger

# スコア増やす
    scoreboard players add @s 8E.Tick 1
    scoreboard players add @s 8E.LifeTime 1

# 敵を狙う
    execute if entity @e[type=#lib:living,tag=Enemy,distance=..30] facing entity @e[tag=Enemy,distance=..30,sort=nearest,limit=1] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 敵いないとプレイヤー見る
    execute unless entity @e[type=#lib:living,tag=Enemy,distance=..30] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 撃つ
    execute if score @s 8E.Tick matches 10.. if entity @e[type=#lib:living,tag=Enemy,distance=..30] anchored eyes positioned ^ ^ ^ run function asset:mob/0302.call_gun/tick/shot/1.ready
    execute if score @s 8E.Tick matches 10.. unless entity @e[type=#lib:living,tag=Enemy,distance=..30] run scoreboard players set @s 8E.Tick 0
# 死ぬ
    execute if score @s 8E.LifeTime matches 200.. run function asset:mob/0302.call_gun/tick/kill