#> asset:sacred_treasure/0373.ice_sorcery/3.2.beamshot2
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0373.ice_sorcery/3.main
#    asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot

# 1前方拡散設定
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 2.5
# 前方拡散を実行する
    function lib:forward_spreader/circle

# ビームを飛ばす
    playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 1.3
    execute as @s facing entity 0-0-0-0-0 feet anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/0373.ice_sorcery/3.3.beam
    tag @s remove AD.Hit