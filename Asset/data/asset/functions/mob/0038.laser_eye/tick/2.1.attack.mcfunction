#> asset:mob/0038.laser_eye/tick/2.1.attack
#
# 適正距離の処理
#
# @within function asset:mob/0038.laser_eye/tick/2.tick

# スコアを増やしていく
    scoreboard players add @s C.LaserTime 1

# プレイヤーを見る
    execute if entity @s[scores={C.LaserTime=..25}] run tp @s ~ ~ ~ facing entity @p


# 一定スコアに達した場合
    execute if entity @s[scores={C.LaserTime=15}] run tag @s add C.Charge

# 演出
    execute if entity @s[scores={C.LaserTime=15}] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 2
    execute if entity @s[scores={C.LaserTime=15}] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 2
    execute if entity @s[scores={C.LaserTime=15}] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 2
    execute if entity @s[scores={C.LaserTime=15..}] anchored eyes positioned ^ ^ ^1 run function lib:particle/circle/composter/0.75
    execute if entity @s[scores={C.LaserTime=15..}] anchored eyes positioned ^ ^ ^1.4 run function lib:particle/circle/composter/0.5

# 攻撃
    execute if entity @s[scores={C.LaserTime=35}] run function asset:mob/0038.laser_eye/tick/2.4.attack2
