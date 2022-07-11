#> asset:spawner/005/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:41,Y:4,Z:24}] in overworld positioned 41 4 24 if entity @p[distance=..40] run function asset:island/005/register/register