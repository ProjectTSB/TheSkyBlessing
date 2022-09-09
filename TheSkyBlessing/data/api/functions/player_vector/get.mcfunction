#> api:player_vector/get
#
#
#
# @output storage api: Return.Vector : [double] @ 3
# @api

# 初期化
    data modify storage api: ReturnVector set value [0d,0d,0d]
# 代入
    execute store result storage api: Return.Vector[0] double 0.01 run scoreboard players get @s PlayerPosDiff.X
    execute store result storage api: Return.Vector[1] double 0.01 run scoreboard players get @s PlayerPosDiff.Y
    execute store result storage api: Return.Vector[2] double 0.01 run scoreboard players get @s PlayerPosDiff.Z