#> asset:sacred_treasure/0467.cosmo_blue_flash/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0467.cosmo_blue_flash/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    execute positioned ~ ~0.5 ~ run function asset:sacred_treasure/0467.cosmo_blue_flash/shot

# リセット
    tag @e[tag=7j.HitEntity] remove 7j.HitEntity
    tag @s remove 7j.HitFlag