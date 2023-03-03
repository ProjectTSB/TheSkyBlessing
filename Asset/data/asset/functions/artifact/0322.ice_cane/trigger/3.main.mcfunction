#> asset:artifact/0322.ice_cane/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0322.ice_cane/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 使用効果
    fill ~-5 ~-3 ~-5 ~5 ~1 ~5 blue_ice replace packed_ice
    fill ~-5 ~-3 ~-5 ~5 ~1 ~5 packed_ice replace ice
    fill ~-5 ~-3 ~-5 ~5 ~1 ~5 ice replace water[level=0]

# 演出
    particle minecraft:spit ~ ~ ~ 2 0.5 2 0.05 100
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.8 1