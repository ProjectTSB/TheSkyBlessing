#> core:migration/v0.0.1/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.0.1"
# from: 9438167ac268e7230d972b1291f277941c1bf331
    scoreboard objectives add Believe3 trigger {"text":"信仰のユーザー入力"}