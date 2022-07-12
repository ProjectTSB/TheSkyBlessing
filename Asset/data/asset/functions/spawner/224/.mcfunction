#> asset:spawner/224/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-82,Y:114,Z:259}] in overworld positioned -82 114 259 if entity @p[distance=..40] run function asset:spawner/224/register