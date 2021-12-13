#> asset:sacred_treasure/0317.sea_storm_sword/trigger/3.1.particle
#
# 神器のメイン処理部
#
# @within function
#    asset:sacred_treasure/0317.sea_storm_sword/trigger/3.main
#    asset:sacred_treasure/0317.sea_storm_sword/trigger/3.1.particle

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ^ ^ ^1 run particle minecraft:dolphin ~ ~ ~ 0.1 0.5 0.1 2 100
# 回す
    scoreboard players add $Rotate Temporary 1
    execute if score $Rotate Temporary matches ..35 rotated ~20 ~ positioned ~ ~0.05 ~ run function asset:sacred_treasure/0317.sea_storm_sword/trigger/3.1.particle