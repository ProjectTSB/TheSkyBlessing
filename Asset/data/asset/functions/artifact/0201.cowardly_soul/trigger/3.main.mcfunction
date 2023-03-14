#> asset:artifact/0201.cowardly_soul/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0201.cowardly_soul/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 落下速度低下付与
    effect give @s minecraft:slow_falling 1 1

# vfx
    particle minecraft:nautilus ~ ~1.25 ~ 0.0 0.5 0.0 0.5 75

# ワープする
    execute in overworld run tp @s 23.5 3.0 24.5