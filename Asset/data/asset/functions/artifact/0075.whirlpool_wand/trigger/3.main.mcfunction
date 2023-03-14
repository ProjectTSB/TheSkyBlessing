#> asset:artifact/0075.whirlpool_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0075.whirlpool_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 水に入っているかいないか
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] at @s if predicate lib:is_in_water/include_flowing run function asset:artifact/0075.whirlpool_wand/trigger/3.1.insidewater
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] at @s unless predicate lib:is_in_water/include_flowing run function asset:artifact/0075.whirlpool_wand/trigger/3.2.outsidewater