#> player_manager:vanilla_attack/calculate
#
# 計算
#
# @within function core:handler/attack

# スコアを計算
    scoreboard players operation @s MobHealth -= @p[tag=this] AttackEvent
    execute if score @s MobHealth matches ..0 run tag @p[tag=this] add Killer
    execute if score @s MobHealth matches ..0 as @p[tag=Killer] run advancement grant @s only core:handler/killed
    execute if score @s MobHealth matches ..0 run damage @s 9999 minecraft:player_attack by @p[tag=Killer]
    execute if score @s MobHealth matches ..0 run kill @s

    tellraw @a [{"text":"score: "},{"score":{"objective":"MobHealth","name":"@s"}}]


# ヘルス再生
    data modify entity @s AbsorptionAmount set value 1024f
