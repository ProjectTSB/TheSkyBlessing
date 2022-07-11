#> asset:spawner/505/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:225,Y:62,Z:30}] in overworld positioned 225 62 30 if entity @p[distance=..40] run function asset:island/505/register/register