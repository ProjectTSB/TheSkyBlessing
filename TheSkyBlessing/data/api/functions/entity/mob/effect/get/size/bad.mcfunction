#> api:entity/mob/effect/get/size/bad
#
# entityに付与されている悪い効果のエフェクトの数を取得します。
#
# @api

# storage呼び出し
    function oh_my_dat:please
# エフェクト数を取得
    execute store result storage api: Return.EffectSize.Bad int 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{IsBadEffect: 1b}]
