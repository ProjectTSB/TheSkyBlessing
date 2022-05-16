#> asset:sacred_treasure/0898.gale_pendant/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0898.gale_pendant/trigger/2.check_condition

#> 個数
# @private
#declare score_holder $Count

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.3
# 補正を削除
    attribute @s generic.movement_speed modifier remove 1-0-1-0-38200000007
# 補正を追加
    function asset:sacred_treasure/0898.gale_pendant/trigger/add_modifier