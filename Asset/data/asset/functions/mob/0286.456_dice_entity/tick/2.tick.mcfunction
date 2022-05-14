#> asset:mob/0286.456_dice_entity/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0286.456_dice_entity/tick/1.trigger

# 回転
    tp @s ~ ~ ~ ~25 ~

# 数tick後
    execute if score @s CU.MoveTime matches 30 positioned ~ ~1.7 ~ facing entity @e[type=#lib:living,type=!player,distance=..20] eyes run function asset:mob/0286.456_dice_entity/tick/event/shoot_beam

# パーティクル
    execute positioned ~ ~1.7 ~ run particle minecraft:electric_spark ^ ^ ^1 0 0 0 0 1 force
    execute positioned ~ ~1.7 ~ run particle minecraft:electric_spark ^ ^ ^-1 0 0 0 0 1 force

# スコア加算
    scoreboard players add @s CU.MoveTime 1
    scoreboard players set @s[scores={CU.MoveTime=31..}] CU.MoveTime 27

# 消滅
    execute if score @s 