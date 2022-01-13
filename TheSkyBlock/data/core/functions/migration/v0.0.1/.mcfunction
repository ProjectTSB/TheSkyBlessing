#> core:migration/v0.0.1/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.0.1"

#> from: 9438167ac268e7230d972b1291f277941c1bf331
# @private
    scoreboard objectives add Believe3 trigger {"text":"信仰のユーザー入力"}

#> from: 154d15659a4009ec706fb8eadf65ecf8f5d0caf8
# @private
    gamerule naturalRegeneration true