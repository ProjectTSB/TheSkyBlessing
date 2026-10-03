#> effect_test:benchmark/init_owner
#
# 測定用付与先の保存データをテンプレートで初期化する。
# give の処理時間を測定に含めず、tick に入る時点の状態を揃える。
# @private

# 測定用の Effect を設定する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects set from storage effect_test: BenchTemplate
    tag @s remove EffectTest.Fresh
