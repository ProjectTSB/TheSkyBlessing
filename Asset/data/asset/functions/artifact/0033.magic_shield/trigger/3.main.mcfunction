#> asset:artifact/0033.magic_shield/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0033.magic_shield/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.anvil.use player @a ~ ~ ~ 0.5 0.5 0
    particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 1 30

# プレイヤーにタグを付与
    tag @s add X.MagicShield

# 再帰先へ飛ばす
    function asset:artifact/0033.magic_shield/trigger/3.1.loop