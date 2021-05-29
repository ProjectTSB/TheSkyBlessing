#> asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0373.ice_sorcery/3.main
#    asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot

# 1前方拡散設定
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 2.5
# またファンクション分岐
    execute as @a[scores={61.BeamTime=1..}] at @s run function lib:forward_spreader/circle

# ビームを飛ばす
    execute as @a[scores={61.BeamTime=1..}] at @s run playsound entity.squid.death master @a ~ ~ ~ 1.0 2.0
    execute as @a[scores={61.BeamTime=1..}] at @s facing entity 0-0-0-0-0 feet anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/0373.ice_sorcery/3.3.beam
    tag @a[tag=61.Hit,scores={61.BeamTime=1..}] remove 61.Hit

# スコアをへらす
    scoreboard players remove @a[scores={61.BeamTime=1..}] 61.BeamTime 1
    scoreboard players reset @a[scores={61.BeamTime=0}] 61.BeamTime

# 次tickも実行
    execute as @p[scores={61.BeamTime=1..}] run schedule function asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot 1t replace