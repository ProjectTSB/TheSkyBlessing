#> asset:artifact/0373.ice_sorcery/trigger/3.2.beamshot2
#
# ビーム部
#
# @within function
#    asset:artifact/0373.ice_sorcery/trigger/3.main
#    asset:artifact/0373.ice_sorcery/trigger/3.1.beamshot

#> SpreadLib
# @private
#declare tag SpreadMarker

# 前方拡散事前準備
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 2.5
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# ビームを飛ばす
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1.3
    execute as @s facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:artifact/0373.ice_sorcery/trigger/3.3.beam
    tag @s remove AD.Hit

# リセット
    kill @e[type=marker,tag=SpreadMarker]