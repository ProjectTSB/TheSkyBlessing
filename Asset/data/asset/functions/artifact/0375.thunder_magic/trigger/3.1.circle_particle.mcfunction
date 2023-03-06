#> asset:artifact/0375.thunder_magic/trigger/3.1.circle_particle
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0375.thunder_magic/trigger/3.main
#   asset:artifact/0375.thunder_magic/trigger/3.1.circle_particle
# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ^ ^ ^1 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5

# 回す
    scoreboard players add $Rotate Temporary 1
    execute if score $Rotate Temporary matches ..35 rotated ~10 0 run function asset:artifact/0375.thunder_magic/trigger/3.1.circle_particle