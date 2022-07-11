#> asset:spawner/374/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:287,Y:174,Z:124}] in overworld positioned 287 174 124 if entity @p[distance=..40] run function asset:spawner/374/register