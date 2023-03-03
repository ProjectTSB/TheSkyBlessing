#> asset:artifact/0189.crystal_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0189.crystal_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# サウンドとパーティクル
    execute at @a[distance=..15] run particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0 3 force @a[distance=..30]
    execute at @a[distance=..15] run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0 3 force @a[distance=..30]
    playsound minecraft:entity.arrow.hit_player player @a[distance=..15] ~ ~ ~ 2 1
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1.5
    playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 2 2

# 効果
    effect clear @a[distance=..15]