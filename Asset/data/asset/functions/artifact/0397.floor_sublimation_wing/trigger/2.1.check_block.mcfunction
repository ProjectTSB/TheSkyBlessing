#> asset:artifact/0397.floor_sublimation_wing/trigger/2.1.check_block
#
# Y <= 32 にテレポートすることができるブロックが存在するかチェックする
#
# @within function
#   asset:artifact/0397.floor_sublimation_wing/trigger/2.check_condition
#   asset:artifact/0397.floor_sublimation_wing/trigger/2.1.check_block

# 加算
    scoreboard players add $397_Count Temporary 1

# 実行位置に条件を満たすブロックがあれば $397_Stat を1に
    execute unless block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision if block ~ ~2 ~ #lib:no_collision run scoreboard players set $397_Stat Temporary 1

# 位置保存用AEC召喚
    execute if score $397_Stat Temporary matches 1 run summon area_effect_cloud ~ ~1 ~ {Tags:["B1.Marker"],Particle:"block air",Radius:0f,Age:-1,Duration:1}

# 32マスまで再起
    execute if score $397_Count Temporary matches ..31 if score $397_Stat Temporary matches 0 positioned ~ ~1 ~ run function asset:artifact/0397.floor_sublimation_wing/trigger/2.1.check_block