#> asset:mob/0262.frestchika/tick/1.summon/3.laser_eye_summon
#
#
#
# @within function asset:mob/0262.frestchika/tick/1.summon/1.summon

# 最寄りのプレイヤーに対して発動（範囲内にいないなら不発）
    data modify storage api: Argument.ID set value 191
    execute at @r[gamemode=!spectator,distance=..15] run function api:mob/summon