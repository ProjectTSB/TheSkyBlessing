#> asset:mob/0038.laser_eye/tick/2.1.attack
#
# 適正距離の処理
#
# @within function asset:mob/0038.laser_eye/tick/2.tick

# スコアを増やしていく
    scoreboard players add @s C.LaserTime 1

# プレイヤーを見る
    execute if entity @s[scores={C.LaserTime=..25}] run tp @s ~ ~ ~ facing entity @p

# 一定スコアに達した場合視点固定タグ付与
    execute if entity @s[scores={C.LaserTime=15}] run tag @s add C.Charge

# 演出
    execute if entity @s[scores={C.LaserTime=15}] run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 2
    execute if entity @s[scores={C.LaserTime=15}] run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 2
    execute if entity @s[scores={C.LaserTime=15..}] anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0038.laser_eye/tick/particle.1
    execute if entity @s[scores={C.LaserTime=15..}] anchored eyes positioned ^ ^ ^1.4 rotated ~ ~90 run function asset:mob/0038.laser_eye/tick/particle.2

# 攻撃
    execute if entity @s[scores={C.LaserTime=35}] run function asset:mob/0038.laser_eye/tick/2.4.attack2
