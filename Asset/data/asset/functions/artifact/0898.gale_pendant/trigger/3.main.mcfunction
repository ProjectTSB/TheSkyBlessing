#> asset:artifact/0898.gale_pendant/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0898.gale_pendant/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.3
    particle dust 0.2 0.9 10000000 0.7 ~ ~1 ~ 0.5 0.8 0.5 1 100
# 補正を追加
    function asset:artifact/0898.gale_pendant/trigger/add_modifier