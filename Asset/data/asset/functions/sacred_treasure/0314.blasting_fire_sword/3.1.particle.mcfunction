#> asset:sacred_treasure/0314.blasting_fire_sword/3.1.particle
#
# 神器のメイン処理部
#
# @within function
#    asset:sacred_treasure/0314.blasting_fire_sword/3.main
#    asset:sacred_treasure/0314.blasting_fire_sword/3.1.particle

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^1 0 0.4 0 0 20

# 回す
    scoreboard players add $Rotate Temporary 1
    execute if score $Rotate Temporary matches ..17 rotated ~20 ~ run function asset:sacred_treasure/0314.blasting_fire_sword/3.1.particle