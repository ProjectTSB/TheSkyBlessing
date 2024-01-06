#> api:entity/mob/effect/get/size/good
#
# entityに付与されている良い効果のエフェクトの数を取得します。
#
# @api

# storage呼び出し
    function oh_my_dat:please
# エフェクト数を取得
    execute store result storage api: Return.EffectSize.Good int 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{IsBadEffect: 0b}]
