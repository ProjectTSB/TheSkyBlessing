#> asset:mob/0317.haruclaire/remove/2.remove
#
# Mobのremove時の処理
#
# @within function asset:mob/0317.haruclaire/remove/1.trigger

# animated javaモデル消去
    execute as @e[tag=8T.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire/remove/all