#> asset:sacred_treasure/0737.firework_display/trigger/firework_process/summon
#
# 花火を召喚する
#
# @within function asset:sacred_treasure/0737.firework_display/trigger/3.main

# 花火を召喚
    summon firework_rocket ~ ~ ~ {Tags:["FireworkInit"],Life:0,LifeTime:20,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;16777215]}]}}}}

# list型に設定
    data modify storage asset:temp Firework.Explosions set value {Type:0,Flicker:1b,Trail:0b}

# 花火の形を設定する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run data modify storage asset:temp Firework.Explosions.Type set value 0
    execute if score $Random Temporary matches 1 run data modify storage asset:temp Firework.Explosions.Type set value 1
    execute if score $Random Temporary matches 2 run data modify storage asset:temp Firework.Explosions.Type set value 2
    execute if score $Random Temporary matches 3 run data modify storage asset:temp Firework.Explosions.Type set value 3

# storageをint_array_list型にする
    data modify storage asset:temp Firework.Colors set value [I;]

# storageに色のデータを突っ込む
    function asset:sacred_treasure/0737.firework_display/trigger/firework_process/append_color

# データ適用
    execute as @e[type=firework_rocket,tag=FireworkInit,distance=..100,limit=1] at @s run function asset:sacred_treasure/0737.firework_display/trigger/firework_process/set_data

# リセット
    scoreboard players reset $Random Temporary
    data remove storage asset:temp Firework