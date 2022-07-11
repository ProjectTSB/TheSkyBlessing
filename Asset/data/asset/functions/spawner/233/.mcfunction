#> asset:spawner/233/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-52,Y:183,Z:-177}] in overworld positioned -52 183 -177 if entity @p[distance=..40] run function asset:island/233/register/register