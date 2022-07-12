#> asset:spawner/435/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:19,Y:213,Z:107}] in overworld positioned 19 213 107 if entity @p[distance=..40] run function asset:spawner/435/register