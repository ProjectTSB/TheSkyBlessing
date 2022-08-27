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