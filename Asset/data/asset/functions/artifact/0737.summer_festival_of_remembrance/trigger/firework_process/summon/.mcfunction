#> asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/
#
# 花火を召喚する
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/spread

# 花火を召喚
    summon firework_rocket ~ ~ ~ {Tags:["FireworkInit"],Life:0,LifeTime:20,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;16777215]}]}}}}

# LifeTimeに突っ込む数値をランダムで決める
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $12 Const

# 最低値分の値を増やしてstorageに代入
    execute store result storage asset:temp Firework.LifeTime int 1 run scoreboard players add $Random Temporary 30

# storageに必要なnbtを設定しておく
    data modify storage asset:temp Firework.Explosions set value {Flicker:1b}

# 花火の形を設定する
    execute store result score $RandomShape Temporary run function lib:random/
    scoreboard players operation $RandomShape Temporary %= $6 Const
    execute if score $RandomShape Temporary matches 0..3 run data modify storage asset:temp Firework.Explosions.Type set value 1
    execute if score $RandomShape Temporary matches 4 run data modify storage asset:temp Firework.Explosions.Type set value 2
    execute if score $RandomShape Temporary matches 5 run data modify storage asset:temp Firework.Explosions.Type set value 3

# 花火の色の数を1~3でランダムに決める
    execute store result score $ColorCount Temporary run function lib:random/
    scoreboard players operation $ColorCount Temporary %= $3 Const
    scoreboard players add $ColorCount Temporary 1

# storageをint_array_list型にする
    data modify storage asset:temp Firework.Colors set value [I;]

# storageに色のデータを突っ込む
    function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/append_color

# データ適用
    execute as @e[type=firework_rocket,tag=FireworkInit,distance=..1,limit=1] run function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/set_data

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $RandomShape Temporary
    scoreboard players reset $ColorCount Temporary
    scoreboard players reset $RecursiveCount Temporary
    data remove storage asset:temp Firework