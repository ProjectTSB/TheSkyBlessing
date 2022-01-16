#> core:migration/v0.0.3/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v0.0.3"

#> from: 73b1f174323ceac2b8bc5a2dfe2a0cf44ee4ff64
# @private
    scoreboard objectives add 5Y.Tick dummy

#> from: f3402a87604fcba871391d993401735681bb4120
# @private
    scoreboard objectives add DropEvent custom:drop {"text":"イベント: アイテムドロップ"}