#> asset:spawner/758/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:209,Y:182,Z:-182}] in overworld positioned 209 182 -182 if entity @p[distance=..40] run function asset:island/758/register/register