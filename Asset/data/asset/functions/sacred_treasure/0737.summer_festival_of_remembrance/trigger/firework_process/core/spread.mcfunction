#> asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/spread
#
# 花火の召喚位置を決める
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/main

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを拡散させ、その位置で花火召喚処理を実行する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[25d,25d],[0d,0d],[25d,25d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..50,sort=nearest,limit=1] positioned ~ ~1 ~ run function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/

# リセット
    data remove storage lib: Argument
    kill @e[type=marker,tag=SpreadMarker,distance=..50,limit=1]