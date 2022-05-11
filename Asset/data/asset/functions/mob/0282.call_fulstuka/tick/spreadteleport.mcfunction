#> asset:mob/0282.call_fulstuka/tick/spreadteleport
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/**

# 拡散値
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
# 拡散する
    function lib:spread_entity/