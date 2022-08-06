#> asset:mob/0301.sinful_thoughts/tick/move/simple_spread
#
# 色々使える簡単なTP
#
# @within function asset:mob/0301.sinful_thoughts/tick/move/spread

# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[4d,4d],[0d,0d],[4d,4d]]
    function lib:spread_entity/