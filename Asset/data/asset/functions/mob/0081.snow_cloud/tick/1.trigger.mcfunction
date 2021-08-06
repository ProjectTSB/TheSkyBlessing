#> asset:mob/0081.snow_cloud/tick/1.trigger
#
# Mobが生きている間毎tick実行されるfunction
#
# @within tag/function asset:mob/tick

execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..30] if data storage asset:context {id:81} run function asset:mob/0081.snow_cloud/tick/2.tick

# 近くにプレイヤーがいない場合は消滅
    execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..30] if data storage asset:context {id:81} run kill @s