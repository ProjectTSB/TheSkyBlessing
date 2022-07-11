#> asset:spawner/035/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:152,Y:12,Z:-56}] in overworld positioned 152 12 -56 if entity @p[distance=..40] run function asset:island/035/register/register