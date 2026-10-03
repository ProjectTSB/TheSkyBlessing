#> effect_test:observe
#
# シナリオの assertion で確認する保存データとイベント件数を取得する
# @private

# 主対象の保存データを取得する
# Effects が存在しない場合は空配列のままにし、前回の観測値を残さない
    execute as @e[tag=EffectTest.Main,limit=1] run function oh_my_dat:please
    data modify storage effect_test: Effects set value []
    data modify storage effect_test: Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects

# 別の付与先の保存データを取得する
    execute as @e[tag=EffectTest.Other,limit=1] run function oh_my_dat:please
    data modify storage effect_test: OtherEffects set value []
    data modify storage effect_test: OtherEffects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects

# イベントの重複・欠落を検査するため、記録件数も保持する
    execute store result storage effect_test: LogCount int 1 run data get storage effect_test: Log
