#> asset:mob/0114.jewel_hunter/hurt/3.far_revenge
#
#
#
# @within function asset:mob/0114.jewel_hunter/hurt/2.hurt

# Projectileを召喚
    data modify storage api: Argument.ID set value 115
    function api:mob/summon

# 方向合わせ
    tp @e[type=marker,scores={MobID=115},distance=..0.1,limit=1] ~ ~1.5 ~ facing entity @p[gamemode=!spectator,tag=Attacker] feet