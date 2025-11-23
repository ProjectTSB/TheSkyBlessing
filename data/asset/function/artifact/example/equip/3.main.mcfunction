#> asset:artifact/example/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/equip/2.check_condition

#> private
# @private
    #declare tag Ex.Init
    #declare tag Ex.Motion

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

playsound block.beacon.activate player @a ~ ~ ~ 0.4 1.5
