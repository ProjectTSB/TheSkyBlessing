#> asset:artifact/ex.1/shot/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/65501/shot/

#> private
# @private
    #declare tag Ex.Init
    #declare tag Ex.Motion

# 召喚
    execute anchored eyes run summon firework_rocket ^ ^ ^0.5 {Tags:["Ex.Init"],LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16701501,3847130],Flicker:1b}]}}},ShotAtAngle:1b}
# 回転
    function api:data_get/rotation
    execute as @e[type=firework_rocket,tag=Ex.Init,limit=1] run data modify entity @s Rotation set from storage api: Rotation
# ベクトル
    summon marker 0.0 0.0 0.0 {Tags:["Ex.Motion"]}
    execute as @e[type=marker,tag=Ex.Motion,limit=1] at @s rotated as @p[tag=this] run tp @s ^ ^ ^0.5
    execute as @e[type=firework_rocket,tag=Ex.Init,limit=1] run data modify entity @s Motion set from entity @e[type=marker,tag=Ex.Motion,limit=1] Pos
    kill @e[type=marker,tag=Ex.Motion]
# リセット
    execute as @e[type=firework_rocket,tag=Ex.Init,limit=1] run tag @s remove Ex.Init
