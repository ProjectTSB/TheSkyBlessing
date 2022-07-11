#> asset:spawner/241/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-3,Y:165,Z:-179}] in overworld positioned -3 165 -179 if entity @p[distance=..40] run function asset:spawner/241/register