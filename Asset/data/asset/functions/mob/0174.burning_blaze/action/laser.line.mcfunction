#> asset:mob/0174.burning_blaze/action/laser.line
#
#
#
# @within function asset:mob/0174.burning_blaze/action/laser.tick
# @within function asset:mob/0174.burning_blaze/action/laser.line

# 演出
    particle dust 0.627 0.016 0.016 0.75 ~ ~ ~ 0 0 0 0 1

# 警告音を鳴らす
    execute positioned ~-1 ~-1 ~-1 if entity @p[dx=1,dy=1] run playsound minecraft:block.note_block.bell hostile @p[tag=!PlayerShouldInvulnerable,distance=..32] ~ ~ ~ 1 2 1

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..32] if block ^ ^ ^0.5 #lib:no_collision run function asset:mob/0174.burning_blaze/action/laser.line