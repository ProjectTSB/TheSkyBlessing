#> asset:spawner/372/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:253,Y:170,Z:125}] in overworld positioned 253 170 125 if entity @p[distance=..40] run function asset:spawner/372/register