#> asset:spawner/698/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:416,Y:144,Z:41}] in overworld positioned 416 144 41 if entity @p[distance=..40] run function asset:island/698/register/register