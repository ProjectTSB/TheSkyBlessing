#> asset:artifact/0950.residue_of_pumpkin/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0950.residue_of_pumpkin/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 100 normal @a
    particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 100 normal @a
    playsound entity.witch.celebrate player @a ~ ~ ~ 0.8 1.8 0

# 効果
    effect give @s speed 30 0 true
    effect give @s night_vision 30 0 true
    effect give @s saturation 5 0 true