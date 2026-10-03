#> asset_manager:effect/display/
#
# 付与中の Effect から表示メッセージを組み立てる。
#
# @s と OhMyDat は表示対象のプレイヤーを指すこと。array session 中の呼出しは想定しない。
#
# @input as entity
# @within function asset_manager:effect/tick

# 表示用の配列を用意する
    data remove storage asset:effect Display
    function lib:array/session/open
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    function lib:array/reverse
    data modify storage asset:effect DisplayEffects set from storage lib: Array
    function lib:array/session/close

# メッセージを構築する
    execute if data storage asset:effect DisplayEffects[0] run function asset_manager:effect/display/foreach
    function asset_manager:effect/display/construct_message/

# リセット
    data remove storage asset:effect DisplayEffects
    data remove storage asset:effect TargetEffect
