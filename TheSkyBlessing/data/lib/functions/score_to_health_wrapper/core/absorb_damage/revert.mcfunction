#> lib:score_to_health_wrapper/core/absorb_damage/revert
# @within function lib:score_to_health_wrapper/core/absorb_damage/foreach

# セッション開ける
    function lib:array/session/open

# 残っている Absorptions を移す
    data modify storage lib: Array set from storage lib: Absorptions
# 反転させる
    function lib:array/reverse
# NewAbsorptions に追加する
    data modify storage lib: NewAbsorptions append from storage lib: Array[]

# セッション閉じる
    function lib:array/session/close
