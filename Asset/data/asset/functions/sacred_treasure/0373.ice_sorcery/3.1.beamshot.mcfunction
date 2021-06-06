#> asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0373.ice_sorcery/3.main
#    asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot

# またファンクション分岐
    execute as @a[scores={61.BeamTime=1..}] at @s run function asset:sacred_treasure/0373.ice_sorcery/3.2.beamshot2

# スコアをへらす
    scoreboard players remove @a[scores={61.BeamTime=1..}] 61.BeamTime 1
    scoreboard players reset @a[scores={61.BeamTime=0}] 61.BeamTime

# 次tickも実行
    execute as @p[scores={61.BeamTime=1..}] run schedule function asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot 1t replace