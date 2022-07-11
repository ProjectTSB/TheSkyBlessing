#> asset:spawner/142/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:428,Y:165,Z:75}] in overworld positioned 428 165 75 if entity @p[distance=..40] run function asset:spawner/142/register