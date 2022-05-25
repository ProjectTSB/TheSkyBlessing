#> core:migration/v0.0.2/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.0.2"

#> from: aeb52a0bffab6af23c04d4cf63f86b54251f6ffe
# @private
    scoreboard objectives add Elytra custom:aviate_one_cm {"text":"イベント: エリトラ"}