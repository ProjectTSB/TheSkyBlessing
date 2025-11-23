#> mob_manager:processing_tag/common_tag/anti_void_action/init
#
# 初期化
#
# @within function mob_manager:processing_tag/common_tag/anti_void_action/

#> Temp
# @private
    #declare tag AntiVoidTargetInit
    #declare score_holder $isSetSuccess

# Entity座標にAEC召喚
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:120,WaitTime:0,Tags:["AntiVoidTargets", "AntiVoidTargetInit"]}
# AECにMobUUIDを移す
    scoreboard players operation @e[type=area_effect_cloud,tag=AntiVoidTargetInit,distance=..0.01,limit=1] VoidMobID = @s MobUUID
# 落下距離取得
    execute store result score $Move Lib run data get entity @s FallDistance 10000
# 落下元らしき場所にAECをTPする
    execute as @e[type=area_effect_cloud,tag=AntiVoidTargetInit,distance=..0.01,limit=1] at @s rotated ~ -90 run function lib:score_to_move/
# その位置から35m以内のランダムなプレイヤーにAECをTPする / 居ない場合は一番近いプレイヤー
    execute as @e[type=area_effect_cloud,tag=AntiVoidTargetInit,limit=1] at @s at @a[distance=..35,sort=random,limit=1] run tp @s ~ ~ ~
    execute as @e[type=area_effect_cloud,tag=AntiVoidTargetInit,limit=1] at @s unless entity @p[distance=..35] at @p run tp @s ~ ~ ~
# AECから初期化タグ外す
    tag @e[type=area_effect_cloud,tag=AntiVoidTargetInit,limit=1] remove AntiVoidTargetInit

# entityにNoGravity付与と慣性リセットをする
    execute store success score $isSetSuccess Temporary run data modify entity @s NoGravity set value 1b
    effect give @s slow_falling 1 255 true
    tp @s @s
# NoGravityのセットに失敗してた場合は元から1bなので後で戻せるようにタグ付与
    execute if score $isSetSuccess Temporary matches 0 run tag @s add DefaultNoGravity
# リセット
    scoreboard players reset $isSetSuccess Temporary
