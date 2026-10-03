#> effect_test:actions/remove_self
#
# 自己削除の予定が、その後の context 書き換えでも取り消されないことを検査する。
# @private

# 継承先からでも元の Effect を指定できるよう originID で削除する
    data modify storage api: Argument.ID set from storage asset:context originID
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 削除後に残り時間を上書きし、remove が優先されることを検証する
    data modify storage asset:context Duration set value 777
