#> asset:sacred_treasure/0373.ice_sorcery/3.2.beamshot2
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0373.ice_sorcery/3.main
#    asset:sacred_treasure/0373.ice_sorcery/3.1.beamshot

# さっき設定した前方拡散を実行する
    function lib:forward_spreader/circle
# ビームを飛ばす
    playsound entity.squid.death master @a ~ ~ ~ 1.0 2.0
    execute as @s facing entity 0-0-0-0-0 feet anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/0373.ice_sorcery/3.3.beam
    tag @s remove 61.Hit