#> lib:spread_entity/core/player/as_substitute_marker
#
#
#
# @within function lib:spread_entity/core/player/

# 身代わりをTPする
    function lib:spread_entity/core/teleport
# プレイヤーをそいつにTPする
    tp @p[tag=TargetPlayer] @s
# んじゃさよなら～
    kill @s