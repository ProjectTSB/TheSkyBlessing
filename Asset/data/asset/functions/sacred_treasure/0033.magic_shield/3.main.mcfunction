#> asset:sacred_treasure/0033.magic_shield/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0033.magic_shield/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# プレイヤーにタグを付与
    tag @s add X.MagicShield
    playsound block.anvil.use master @a ~ ~ ~ 0.5 0.5 0

# 再帰先へ飛ばす
    function asset:sacred_treasure/0033.magic_shield/3.1.loop