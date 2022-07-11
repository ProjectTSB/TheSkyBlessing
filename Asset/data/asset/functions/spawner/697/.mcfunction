#> asset:spawner/697/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:441,Y:143,Z:49}] in overworld positioned 441 143 49 if entity @p[distance=..40] run function asset:spawner/697/register