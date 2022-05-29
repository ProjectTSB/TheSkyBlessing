#> asset:mob/0264.dark_summoner/tick/event/casting
#
#
#
# @within function asset:mob/0264.dark_summoner/tick/2.tick

# 詠唱
    scoreboard players add @s 7C.Attack 1
    effect give @s slowness 1 10 true

# SFX
    particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 1
    execute if score @s 7C.Attack matches 40 run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 4 2
    execute if score @s 7C.Attack matches 40..100 run particle minecraft:dust 0.545 0.11 0.655 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 1
    execute if score @s 7C.Attack matches 100.. run particle minecraft:dust 0.545 0.5 0.655 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 1

# 実行
    execute if score @s 7C.Attack matches 80 rotated ~ 0 positioned ^2 ^ ^ if block ~ ~ ~ #lib:no_collision run function asset:mob/0264.dark_summoner/tick/event/summon_minions
    execute if score @s 7C.Attack matches 90 rotated ~ 0 positioned ^-2 ^ ^ if block ~ ~ ~ #lib:no_collision run function asset:mob/0264.dark_summoner/tick/event/summon_minions
    execute if score @s 7C.Attack matches 85 rotated ~ 0 positioned ^ ^ ^-2 if block ~ ~ ~ #lib:no_collision run function asset:mob/0264.dark_summoner/tick/event/summon_minions

# ポーズ変更
    item replace entity @s[scores={7C.Attack=120}] armor.head with stick{CustomModelData:20214}

# 終了
    execute if score @s 7C.Attack matches 180.. run function asset:mob/0264.dark_summoner/tick/event/cast_finish