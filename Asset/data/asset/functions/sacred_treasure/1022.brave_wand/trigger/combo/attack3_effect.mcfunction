#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack3_effect
#
# 波動オーブフィニッシュ: 攻撃判定部分
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack3_spread

# 使用者です
    tag @s add SE.Used

# ボール状の判定
    function asset:sacred_treasure/1022.brave_wand/trigger/combo/particle_area
    particle electric_spark ~ ~ ~ 0 0 0 0.5 50

# 使用者タグの解除
    tag @s remove SE.Used