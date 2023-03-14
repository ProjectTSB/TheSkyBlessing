#> asset:artifact/0609.lunar_flare/trigger/projectile/beamloop
#
# ビーム部
#
# @within function asset:artifact/0609.lunar_flare/trigger/**


# ここから先は神器側の効果の処理を書く


# 2回実行して早くする
    function asset:artifact/0609.lunar_flare/trigger/projectile/beam
    function asset:artifact/0609.lunar_flare/trigger/projectile/beam

# 再帰
    execute if entity @e[tag=GX.Laser] run schedule function asset:artifact/0609.lunar_flare/trigger/projectile/beamloop 1t replace