#> asset:mob/0078.messenger_of_thunder/skill/4/2.activate
#
# 雷を召喚し、バックステップする
#
# @within function asset:mob/0078.messenger_of_thunder/skill/4/1

# 雷を召喚
    data modify storage api: Argument.ID set value 82
    function api:mob/summon
    execute facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~ 0 run tp @e[type=marker,tag=!26.Already,scores={MobID=82},distance=..0.001,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @e[type=marker,tag=!26.Already,scores={MobID=82},distance=..0.01,sort=nearest,limit=1] add 26.Already

# モーション
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~-180 -20 run function lib:motion/
    data remove storage lib: Argument