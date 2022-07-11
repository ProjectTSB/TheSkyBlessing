#> asset:spawner/708/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:420,Y:117,Z:32}] in overworld positioned 420 117 32 if entity @p[distance=..40] run function asset:spawner/708/register