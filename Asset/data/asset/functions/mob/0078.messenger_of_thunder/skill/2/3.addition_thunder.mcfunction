#> asset:mob/0078.messenger_of_thunder/skill/2/3.addition_thunder
#
# 雷を2本追加で召喚
#
# @within function asset:mob/0078.messenger_of_thunder/skill/2/1

# 雷を召喚
    data modify storage api: Argument.ID set value 79
    function api:mob/summon
    execute facing entity @p[distance=..50] feet rotated ~30 ~ run tp @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] add 26.Already

# 雷を召喚
    data modify storage api: Argument.ID set value 79
    function api:mob/summon
    execute facing entity @p[distance=..50] feet rotated ~-30 ~ run tp @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] add 26.Already