#> asset:spawner/136/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:183,Y:141,Z:277}] in overworld positioned 183 141 277 if entity @p[distance=..40] run function asset:spawner/136/register