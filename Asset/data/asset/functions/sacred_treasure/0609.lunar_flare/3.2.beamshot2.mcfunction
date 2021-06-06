#> asset:sacred_treasure/0609.lunar_flare/3.2.beamshot2
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0609.lunar_flare/3.main
#    asset:sacred_treasure/0609.lunar_flare/3.1.beamshot

# 1前方拡散設定
    data modify storage lib: Argument.Distance set value 5.0
    data modify storage lib: Argument.Spread set value 2.5
# 前方拡散を実行する
    function lib:forward_spreader/circle

# ビームを飛ばす
    summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["9P.Laser","9P.First"]}

    execute facing entity 0-0-0-0-0 feet run tp @e[type=armor_stand,tag=9P.First] ^ ^ ^-17 ~ ~
    tag @e[type=armor_stand,tag=9P.First] remove 9P.First
    schedule function asset:sacred_treasure/0609.lunar_flare/3.3.beam 1t replace