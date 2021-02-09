#> asset:sacred_treasure/0397.floor_sublimation_wing/2.1.check_block
#
# Y <= 32 にテレポートすることができるブロックが存在するかチェックする
#
# @within
#   function asset:sacred_treasure/0397.floor_sublimation_wing/2.check_condition
#   function asset:sacred_treasure/0397.floor_sublimation_wing/2.1.check_block

# 加算
scoreboard players add $397_Count Temporary 1

# 実行位置に条件を満たすブロックがあれば $397_Stat を1に
execute unless block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run scoreboard players set $397_Stat Temporary 1

# 32マスまで再起
execute if score $397_Count Temporary matches ..32 if score $397_Stat Temporary matches 0 positioned ~ ~1 ~ run function asset:sacred_treasure/0397.floor_sublimation_wing/2.1.check_block

# 位置保存用AEC召喚
execute if score $397_Stat Temporary matches 1 run summon area_effect_cloud ~ ~1 ~ {Tags:["397.Marker"],Particle:"block air",Radius:0f,Age:-1,Duration:1}