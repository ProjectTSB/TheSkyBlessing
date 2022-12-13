#> asset:mob/0261.laser_eye_mk2/tick/3.ready
#
#
#
# @within function asset:mob/0261.laser_eye_mk2/tick/2.tick


# スコアを増やす
    scoreboard players add @s 79.Time 1

# タグを与える
    execute if score @s 79.Time matches 1 run tag @s add 79.Ready
# 音を鳴らす
    execute if score @s 79.Time matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 2
# 一定スコアで射撃準備
    execute if score @s 79.Time matches ..20 anchored eyes positioned ^ ^ ^1.6 rotated ~ ~90 run function asset:mob/0261.laser_eye_mk2/tick/particle

# 一定スコアで射撃
    execute if score @s 79.Time matches 20 anchored eyes positioned ^ ^ ^1.6 run function asset:mob/0261.laser_eye_mk2/tick/4.shoot
    execute if score @s 79.Time matches 20 run tag @s remove Landing
    execute if score @s 79.Time matches 20 run tag @s remove 79.Ready
# 発砲演出
    execute if score @s 79.Time matches 20 run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1

# 一定スコアで終了
    execute if score @s 79.Time matches 70 run function asset:mob/0261.laser_eye_mk2/tick/6.end