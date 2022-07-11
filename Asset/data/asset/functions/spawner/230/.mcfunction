#> asset:spawner/230/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-52,Y:181,Z:-168}] in overworld positioned -52 181 -168 if entity @p[distance=..40] run function asset:island/230/register/register