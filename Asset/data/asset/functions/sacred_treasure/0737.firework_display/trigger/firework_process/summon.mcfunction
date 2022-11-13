#> asset:sacred_treasure/0737.firework_display/trigger/firework_process/summon
#
# 花火を召喚する
#
# @within function asset:sacred_treasure/0737.firework_display/trigger/3.main

# 花火を召喚
    summon firework_rocket ~ ~ ~ {Tags:["FireworkInit"],Life:0,LifeTime:20,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:1b,Trail:1b,Colors:[I;16777215]}]}}}}

# storageをint_array_list型にする
    data modify storage asset:temp Firework.Color set value [I;]

# storageに3色のデータを突っ込む
    function asset:sacred_treasure/0737.firework_display/trigger/firework_process/append_color

# データ適用
    execute as @e[type=firework_rocket,tag=FireworkInit,distance=..100,limit=1] at @s run function asset:sacred_treasure/0737.firework_display/trigger/firework_process/set_data

# リセット
    scoreboard players reset $Random Temporary
    data remove storage asset:temp Firework