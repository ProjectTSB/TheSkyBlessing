#> asset:spawner/533/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-12,Y:39,Z:-92}] in overworld positioned -12 39 -92 if entity @p[distance=..40] run function asset:island/533/register/register