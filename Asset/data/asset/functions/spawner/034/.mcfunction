#> asset:spawner/034/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:142,Y:13,Z:-21}] in overworld positioned 142 13 -21 if entity @p[distance=..40] run function asset:island/034/register/register