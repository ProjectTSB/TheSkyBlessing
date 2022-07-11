#> asset:spawner/300/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:416,Y:42,Z:262}] in overworld positioned 416 42 262 if entity @p[distance=..40] run function asset:island/300/register/register