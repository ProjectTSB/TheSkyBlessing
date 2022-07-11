#> asset:spawner/553/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-130,Y:166,Z:-73}] in overworld positioned -130 166 -73 if entity @p[distance=..40] run function asset:island/553/register/register