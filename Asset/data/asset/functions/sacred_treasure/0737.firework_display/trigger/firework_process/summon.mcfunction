#> asset:sacred_treasure/0737.firework_display/trigger/firework_process/summon
#
# 花火を召喚する
#
# @within function asset:sacred_treasure/0737.firework_display/trigger/3.main

# 花火を召喚
    summon firework_rocket ~ ~ ~ {Tags:["FireworkInit"],Life:0,LifeTime:20,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;16777215]}]}}}}

# LifeTimeに突っ込む数値をランダムで決める
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $16 Const

# 最低値分の値を増やしてstorageに代入
    execute store result storage asset:temp Firework.LifeTime int 1 run scoreboard players add $Random Temporary 20

# storageをlist型に設定
    data modify storage asset:temp Firework.Explosions set value {Flicker:1b,Trail:0b}

# 花火の形を設定する
    execute store result score $RandomShape Temporary run function lib:random/
    scoreboard players operation $RandomShape Temporary %= $7 Const
    execute if score $RandomShape Temporary matches 0..2 run data modify storage asset:temp Firework.Explosions.Type set value 0
    execute if score $RandomShape Temporary matches 3..4 run data modify storage asset:temp Firework.Explosions.Type set value 1
    execute if score $RandomShape Temporary matches 5 run data modify storage asset:temp Firework.Explosions.Type set value 2
    execute if score $RandomShape Temporary matches 6 run data modify storage asset:temp Firework.Explosions.Type set value 3

# 花火の色の数を1~3でランダムに決める
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

# $Randomの数値を$ColorCountに移して+1することで1~3の値を出す
    scoreboard players operation $ColorCount Temporary = $Random Temporary
    scoreboard players add $ColorCount Temporary 1

# $RandomShapeが3の場合は$ColorCountを1にする
    execute if score $RandomShape Temporary matches 6 run scoreboard players set $ColorCount Temporary 1

# storageをint_array_list型にする
    data modify storage asset:temp Firework.Colors set value [I;]

# storageに色のデータを突っ込む
    function asset:sacred_treasure/0737.firework_display/trigger/firework_process/append_color

# データ適用
    execute as @e[type=firework_rocket,tag=FireworkInit,distance=..1,limit=1] at @s run function asset:sacred_treasure/0737.firework_display/trigger/firework_process/set_data

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $RandomShape Temporary
    scoreboard players reset $ColorCount Temporary
    scoreboard players reset $RecursiveCount Temporary
    data remove storage asset:temp Firework