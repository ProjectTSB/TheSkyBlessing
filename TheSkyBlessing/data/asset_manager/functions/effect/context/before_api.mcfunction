#> asset_manager:effect/context/before_api
#
# OhMyDat の参照先を API の対象に合わせ、実行中の context の変更を書き戻す。
# get は反映後の値を読み、give / remove は反映後の値を更新する。
#
# @s は API の対象。api: Argument / Return は変更しない。
#
# get 系 API はこの関数を CB として指定し、with_idempotent.m が転送先で呼び出す。
# 公開範囲には CB の指定元と実際の呼出元を含める。
#
# @input as entity
# @within function
#   api:entity/mob/effect/give
#   api:entity/mob/effect/remove/from_id
#   api:entity/mob/effect/remove/from_level
#   api:entity/mob/effect/get/all
#   api:entity/mob/effect/get/size/all
#   api:entity/mob/effect/get/size/bad
#   api:entity/mob/effect/get/size/good
#   api:entity/mob/effect/core/get/from_id.m
#   api:entity/mob/effect/core/get/from_level/
#   api:mob/apply_to_forward_target/with_idempotent.m

# OhMyDat の参照先を API が実際に扱う付与先へ合わせる
# getter は ForwardTarget を解決した先の @s でこの入口を呼ぶ。
# 実行中の Effect がない場合も、API 本体が保存先を扱えるように取得する。
    function oh_my_dat:please

# 同じ付与先の given / re-given / tick 中だけ context を書き戻す
# 別の付与先への操作に現在の Field を混ぜない。remove / end 中の context も書き戻さない。
    execute if entity @s[tag=Effect.CurrentOwner] if data storage asset:effect Current{Phase:"callback"} run function asset_manager:effect/context/flush.m with storage asset:effect Current
