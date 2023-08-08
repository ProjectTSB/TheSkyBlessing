#> asset:artifact/0772.dolphin_amulet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0772.dolphin_amulet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle dolphin ~ ~ ~ 1 1 1 0 140 normal @a

# 確率で音
    execute if predicate lib:random_pass_per/15 run playsound entity.dolphin.ambient_water neutral @s ~ ~ ~ 0.4 1 0

# エフェクト
    effect give @s dolphins_grace 11 0 true
    effect give @s water_breathing 11 0 true