#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/effect
#
# 波動オーブ1: 攻撃判定部分
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/spread

# 使用者です
    tag @s add SE.Used

# ボール状の判定
    function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/particle
    particle electric_spark ~ ~ ~ 0 0 0 0.5 50

# ちょっとデカめのヒット判定
    execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/damage

# 使用者タグの解除
    tag @s remove SE.Used