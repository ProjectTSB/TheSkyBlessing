#> asset:artifact/0108.vacuum_hopper/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0108.vacuum_hopper/trigger/2.check_condition

#> Private
# @private
    #declare tag Vacuum
    #declare score_holder $Items

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    playsound entity.enderman.teleport player @s ~ ~ ~ 1 2
    particle portal ~ ~ ~ 0.5 1 0.5 0 300 force @a
    execute positioned ^ ^ ^10 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute positioned ^ ^ ^15 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute positioned ^ ^ ^20 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute positioned ^ ^ ^25 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute positioned ^ ^ ^30 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute positioned ^ ^ ^35 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute positioned ^ ^ ^40 run tag @e[type=item,tag=!Uninterferable,distance=..10] add Vacuum
    execute at @e[tag=Vacuum] run particle portal ~ ~ ~ 0.2 0.2 0.2 0 30 force @a
    tp @e[tag=Vacuum] @s
    execute store result score $Items Temporary if entity @e[type=item,tag=Vacuum]
    tellraw @s [{"text": "ﾀﾞｲｿｿ >> "},{"text": "[ "},{"score": {"name": "$Items","objective": "Temporary"},"color": "gold"},{"text": " ]のアイテムを回収しました"}]
    execute as @e[type=item,distance=..1] run data modify entity @s PickupDelay set value 0s
    scoreboard players reset $Items Temporary
    tag @e[type=item,tag=Vacuum] remove Vacuum