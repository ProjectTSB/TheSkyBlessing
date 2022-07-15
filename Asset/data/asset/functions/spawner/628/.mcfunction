#> asset:spawner/628/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-154,Y:253,Z:4}] in overworld positioned -154 253 4 if entity @p[distance=..40] run function asset:spawner/628/register