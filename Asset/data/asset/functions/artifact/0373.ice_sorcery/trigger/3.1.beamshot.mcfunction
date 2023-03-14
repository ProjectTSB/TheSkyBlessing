#> asset:artifact/0373.ice_sorcery/trigger/3.1.beamshot
#
# ビーム部
#
# @within function
#    asset:artifact/0373.ice_sorcery/trigger/3.main
#    asset:artifact/0373.ice_sorcery/trigger/3.1.beamshot
#    asset:artifact/0373.ice_sorcery/trigger/rejoin_process

# またファンクション分岐
    execute as @a[scores={AD.BeamTime=1..}] at @s run function asset:artifact/0373.ice_sorcery/trigger/3.2.beamshot2

# スコアをへらす
    scoreboard players remove @a[scores={AD.BeamTime=1..}] AD.BeamTime 1
    scoreboard players reset @a[scores={AD.BeamTime=0}] AD.BeamTime

# 次tickも実行
    execute as @p[scores={AD.BeamTime=1..}] run schedule function asset:artifact/0373.ice_sorcery/trigger/3.1.beamshot 1t replace