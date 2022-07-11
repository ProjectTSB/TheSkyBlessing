#> asset:spawner/009/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-41,Y:38,Z:-92}] in overworld positioned -41 38 -92 if entity @p[distance=..40] run function asset:island/009/register/register