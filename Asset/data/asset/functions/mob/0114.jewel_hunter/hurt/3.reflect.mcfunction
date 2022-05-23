#> asset:mob/0114.jewel_hunter/hurt/3.reflect
#
#
#
# @within function asset:mob/0114.jewel_hunter/hurt/2.hurt

#> Private
# @private
    #declare tag 35.Already

# Projectileを召喚
    data modify storage api: Argument.ID set value 115
    function api:mob/summon

# 方向合わせ
    tp @e[type=marker,tag=!35.Already,scores={MobID=115},distance=..0.1,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @e[type=marker,tag=!35.Already,scores={MobID=115},distance=..0.1,sort=nearest,limit=1] add 35.Already