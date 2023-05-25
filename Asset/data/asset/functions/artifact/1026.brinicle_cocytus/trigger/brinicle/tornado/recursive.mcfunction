execute store result entity @s Rotation[0] float 1 run scoreboard players add @s SI.Temp2 1
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
execute store result score @s SI.Temp1 run data get entity @s Pos[2] 1000
scoreboard players set @s SI.Temp3 1050
scoreboard players operation @s SI.Temp3 -= @s SI.Temp1
scoreboard players operation @s SI.Temp4 = @s SI.Temp3

tp @s ~ ~ ~
execute if score @s SI.Temp3 matches 512.. run tag @s add 146tmp.512
execute if score @s SI.Temp3 matches 512.. run scoreboard players remove @s SI.Temp3 512
execute if score @s SI.Temp3 matches 256.. run tag @s add 146tmp.256
execute if score @s SI.Temp3 matches 256.. run scoreboard players remove @s SI.Temp3 256
execute if score @s SI.Temp3 matches 128.. run tag @s add 146tmp.128
execute if score @s SI.Temp3 matches 128.. run scoreboard players remove @s SI.Temp3 128
execute if score @s SI.Temp3 matches 064.. run tag @s add 146tmp.064
execute if score @s SI.Temp3 matches 064.. run scoreboard players remove @s SI.Temp3 064
execute if score @s SI.Temp3 matches 032.. run tag @s add 146tmp.032
execute if score @s SI.Temp3 matches 032.. run scoreboard players remove @s SI.Temp3 032
execute if score @s SI.Temp3 matches 016.. run tag @s add 146tmp.016
execute if score @s SI.Temp3 matches 016.. run scoreboard players remove @s SI.Temp3 016
execute if score @s SI.Temp3 matches 008.. run tag @s add 146tmp.008
execute if score @s SI.Temp3 matches 008.. run scoreboard players remove @s SI.Temp3 008
execute if score @s SI.Temp3 matches 004.. run tag @s add 146tmp.004
execute if score @s SI.Temp3 matches 004.. run scoreboard players remove @s SI.Temp3 004
execute if score @s SI.Temp3 matches 002.. run tag @s add 146tmp.002
execute if score @s SI.Temp3 matches 002.. run scoreboard players remove @s SI.Temp3 002
execute if score @s SI.Temp3 matches 001.. run tag @s add 146tmp.001
execute if score @s SI.Temp3 matches 001.. run scoreboard players remove @s SI.Temp3 001
function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/tornado/radius/512
tag @s remove 146tmp.512
tag @s remove 146tmp.256
tag @s remove 146tmp.128
tag @s remove 146tmp.064
tag @s remove 146tmp.032
tag @s remove 146tmp.016
tag @s remove 146tmp.008
tag @s remove 146tmp.004
tag @s remove 146tmp.002
tag @s remove 146tmp.001

execute if score @s SI.Temp2 matches ..59 rotated ~17 0 positioned ~ ~0.15 ~ run function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/tornado/recursive