#> lib:score_to_health_wrapper/core/absorb_damage/get_absorptions
# @within function lib:score_to_health_wrapper/core/absorb_damage/

# セッション開く
    function lib:array/session/open

# Priority 10 -> 0 の順に追加
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:10}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:9}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:8}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:7}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:6}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:5}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:4}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:3}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:2}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:1}]
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{Priority:0}]
# 反転させる (0 -> 10)
    function lib:array/reverse
# Absorptions に移す
    data modify storage lib: Absorptions set from storage lib: Array

# セッション閉じる
    function lib:array/session/close
