#> asset:mob/0059.jack_o_lantern/tick/spread_tp
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/**

# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    function lib:spread_entity/

# プレイヤーを見る
    execute at @s run tp @s ~ ~ ~ facing entity @p