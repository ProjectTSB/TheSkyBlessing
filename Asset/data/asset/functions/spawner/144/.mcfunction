#> asset:spawner/144/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:428,Y:155,Z:79}] in overworld positioned 428 155 79 if entity @p[distance=..40] run function asset:spawner/144/register