#> asset:spawner/071/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:65,Y:17,Z:93}] in overworld positioned 65 17 93 if entity @p[distance=..40] run function asset:spawner/071/register