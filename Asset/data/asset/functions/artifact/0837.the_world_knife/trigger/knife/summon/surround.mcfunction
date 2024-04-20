#> asset:artifact/0837.the_world_knife/trigger/knife/summon/surround
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/3.main

# 拡散用marker召喚
    execute as @e[type=#lib:living,tag=N9.Target,distance=..20,limit=1] anchored eyes run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3d,3d],[3d,2d],[3d,3d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..20] at @s run function lib:spread_entity/
# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..20] facing entity @e[type=#lib:living,tag=N9.Target,distance=..20,limit=1] eyes positioned ^ ^ ^-3 run function asset:artifact/0837.the_world_knife/trigger/knife/summon/
# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..20]

# 拡散用marker召喚
    execute as @e[type=#lib:living,tag=N9.Target,distance=..20,limit=1] anchored eyes run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[2d,2d],[3d,2d],[2d,2d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..20] at @s run function lib:spread_entity/
# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..20] facing entity @e[type=#lib:living,tag=N9.Target,distance=..20,limit=1] eyes positioned ^ ^ ^-3 run function asset:artifact/0837.the_world_knife/trigger/knife/summon/
# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..20]

# 拡散用marker召喚
    execute as @e[type=#lib:living,tag=N9.Target,distance=..20,limit=1] anchored eyes run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[2d,2d],[3d,2d],[2d,2d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..20] at @s run function lib:spread_entity/
# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..20] facing entity @e[type=#lib:living,tag=N9.Target,distance=..20,limit=1] eyes positioned ^ ^ ^-3 run function asset:artifact/0837.the_world_knife/trigger/knife/summon/
# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..20]
