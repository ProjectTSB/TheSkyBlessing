#> asset:artifact/0719.sword_of_divine_sound/trigger/vfx/start_lightning
#
# 雷の演出の開始処理
#
# @within function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/

#> Private
# @private
    #declare tag LightningMarker

# 雷の演出の開始処理
    summon marker ~ ~ ~ {Tags:["LightningMarker"]}
    tp @e[type=marker,tag=LightningMarker,distance=..0.01,limit=1] ~ ~ ~ ~ ~
    execute as @e[type=marker,tag=LightningMarker,distance=..0.01,limit=1] at @s run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/lightning

# リセット
    kill @e[type=marker,tag=LightningMarker,distance=..30,limit=1]
    scoreboard players reset $RecursiveLimit Temporary