#> asset:artifact/example/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/trigger/2.check_condition

#> private
# @private
    #declare tag Ex.Init
    #declare tag Ex.Motion

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

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
