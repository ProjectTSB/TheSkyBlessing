#> asset:spawner/132/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:185,Y:110,Z:253}] in overworld positioned 185 110 253 if entity @p[distance=..40] run function asset:island/132/register/register