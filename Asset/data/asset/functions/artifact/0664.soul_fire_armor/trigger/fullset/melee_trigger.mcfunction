#> asset:artifact/0664.soul_fire_armor/trigger/fullset/melee_trigger
#
# フルセット検知して近接攻撃するよ
#
# @within tag/function asset:artifact/attack/melee

# 攻撃
    execute if entity @s[tag=IG.Fullset] unless entity @s[scores={IG.AttackCT=0..}] run function asset:artifact/0664.soul_fire_armor/trigger/fullset/melee