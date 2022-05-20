#> asset:mob/0287.burning_stomper/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0287.burning_stomper/tick/1.trigger

# スコア加算
    execute if entity @a[gamemode=!spectator,distance=..30] run scoreboard players add @s 7Z.MoveTime 1

# 飛び上がる
    execute if entity @s[scores={7Z.MoveTime=30},nbt={OnGround:1b}] run function asset:mob/0287.burning_stomper/tick/event/jump

# 着地で爆発
    execute if entity @s[scores={7Z.MoveTime=31..},nbt={OnGround:1b}] run function asset:mob/0287.burning_stomper/tick/event/stomp

# ゴリ押しで着地ダメージ無効化
    scoreboard players add @s 7Z.FallResist 1
    execute if entity @s[scores={7Z.FallResist=3..,7Z.MoveTime=30..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.5f,Particle:"lava",Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:2,ShowParticles:0b}]}
    scoreboard players reset @s[scores={7Z.FallResist=3..}] 7Z.FallResist

# 首固定
    data modify entity @s Rotation[1] set value 0.0f