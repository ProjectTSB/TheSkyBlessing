#> asset:spawner/183/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:166,Y:98,Z:259}] in overworld positioned 166 98 259 if entity @p[distance=..40] run function asset:spawner/183/register