#> core:migration/v0.1.2/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.1.2"

#> from: 0876ebb758ff06a693772f61d38826203e214486
# @private
scoreboard objectives add 7U.UserID dummy

#> from: ec624d1852620d3c7549df1cac0d0f9448cf6763
# @private
#declare objective MobHealthMax
scoreboard players operation * MobHealthMax /= $100 Const