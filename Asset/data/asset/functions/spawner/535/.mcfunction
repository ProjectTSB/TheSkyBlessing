#> asset:spawner/535/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-11,Y:45,Z:165}] in overworld positioned -11 45 165 if entity @p[distance=..40] run function asset:spawner/535/register