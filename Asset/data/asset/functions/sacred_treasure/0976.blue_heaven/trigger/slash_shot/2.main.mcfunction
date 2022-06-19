#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/2.main
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/1.tick

# 移動 いっぱい書いて正確な移動に
    execute at @s run tp @s ^ ^ ^0.5
    execute at @s run tp @s ^ ^ ^0.5

# パーティクル
    execute positioned ~ ~0.8 ~ run particle minecraft:electric_spark ^ ^ ^-2 0 0 0 0.3 5

# スコア加算
    scoreboard players add @s R4.Tick 1

# 後からモデル装着
    execute if entity @s[scores={R4.Tick=5..7}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 2
    data modify entity @s[scores={R4.Tick=7}] Marker set value 1b
    data modify entity @s[scores={R4.Tick=7}] Fire set value 9999s
    item replace entity @s[scores={R4.Tick=7}] armor.head with potion{CustomModelData:20241,CustomPotionColor:8908799}

# 壁に消滅
    execute unless block ~ ~1 ~ #lib:no_collision run kill @s

# ヒット判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Enemy,tag=!Uninterferable,dx=0] at @s run function asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/3.hit

# キル
    execute if entity @s[scores={R4.Tick=20..}] positioned ~ ~0.8 ~ run particle minecraft:electric_spark ^ ^ ^-2 0 0 0 0.7 10
    kill @s[scores={R4.Tick=20..}]