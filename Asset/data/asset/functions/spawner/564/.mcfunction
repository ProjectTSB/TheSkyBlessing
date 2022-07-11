#> asset:spawner/564/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:398,Y:105,Z:77}] in overworld positioned 398 105 77 if entity @p[distance=..40] run function asset:spawner/564/register