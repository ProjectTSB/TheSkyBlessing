#> asset:sacred_treasure/0609.lunar_flare/trigger/3.5.beamloop
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/**


# ここから先は神器側の効果の処理を書く


# 2回実行させる早くなるため
    function asset:sacred_treasure/0609.lunar_flare/trigger/3.3.beam
    function asset:sacred_treasure/0609.lunar_flare/trigger/3.3.beam

# 再帰
    execute if entity @e[tag=GX.Laser] run schedule function asset:sacred_treasure/0609.lunar_flare/trigger/3.5.beamloop 1t replace