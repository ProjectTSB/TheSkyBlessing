#> asset:artifact/0915.flame_hunter_hat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0915.flame_hunter_hat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle flame ~ ~1.7 ~ 0.3 0.2 0.3 0 30 normal @a
    particle block azalea ~ ~1.7 ~ 0.3 0.2 0.3 0 60 normal @a
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.2 0
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.4 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1 0

# 装備時の共通処理
    function asset:artifact/0915.flame_hunter_hat/trigger/common/equip