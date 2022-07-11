#> asset:spawner/503/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:225,Y:62,Z:62}] in overworld positioned 225 62 62 if entity @p[distance=..40] run function asset:island/503/register/register