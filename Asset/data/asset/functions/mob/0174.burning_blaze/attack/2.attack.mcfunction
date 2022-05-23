#> asset:mob/0174.burning_blaze/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0174.burning_blaze/attack/1.trigger

#> tag
# @private
    #declare tag 4U.UUIDset

# 矢だす
    execute at @a[tag=Victim] run summon minecraft:arrow ~ ~2.1 ~ {Motion:[0d,-1d,0d],Fire:20s,Tags:[4U.UUIDset]}
# OwnerUUIDいれる
    data modify entity @e[type=arrow,tag=4U.UUIDset,distance=..3,limit=1] Owner set from entity @s UUID
# タグ消す
    tag @e[type=arrow,tag=4U.UUIDset,distance=..3,limit=1] remove 4U.UUIDset