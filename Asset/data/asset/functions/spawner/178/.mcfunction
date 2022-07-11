#> asset:spawner/178/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:206,Y:27,Z:300}] in overworld positioned 206 27 300 if entity @p[distance=..40] run function asset:spawner/178/register