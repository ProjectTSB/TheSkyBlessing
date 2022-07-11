#> asset:spawner/532/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-70,Y:39,Z:-92}] in overworld positioned -70 39 -92 if entity @p[distance=..40] run function asset:island/532/register/register