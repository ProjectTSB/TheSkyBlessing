#> asset:artifact/0724.oblivious_snow/trigger/fullset/trigger
#
# 攻撃処理を行う際に使用可能かをチェック
#
# @within tag/function asset:artifact/attack

execute if entity @s[tag=K4.Fullset] unless score @s K4.AttackCD matches 1.. run function asset:artifact/0724.oblivious_snow/trigger/fullset/attack