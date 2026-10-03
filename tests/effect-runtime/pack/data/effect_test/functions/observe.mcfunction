#> effect_test:observe
#
# シナリオの assertion が参照する保存データとイベント件数を採取する。
# 戻り値は effect_test: Effects / OtherEffects / LogCount に保持する。
# @private

# 主対象の保存データを取得する
# Effects が存在しない場合は空配列のままにし、前回の観測を残さない。
    execute as @e[tag=EffectTest.Main,limit=1] run function oh_my_dat:please
    data modify storage effect_test: Effects set value []
    data modify storage effect_test: Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects

# 別の付与先の保存データを取得する
# API が主対象以外を変更した場合も、両者を分けて検証できるようにする。
    execute as @e[tag=EffectTest.Other,limit=1] run function oh_my_dat:please
    data modify storage effect_test: OtherEffects set value []
    data modify storage effect_test: OtherEffects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects

# イベントの重複・欠落を検査するため、記録件数も保持する
    execute store result storage effect_test: LogCount int 1 run data get storage effect_test: Log
