#> asset:spawner/332/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:286,Y:166,Z:272}] in overworld positioned 286 166 272 if entity @p[distance=..40] run function asset:spawner/332/register