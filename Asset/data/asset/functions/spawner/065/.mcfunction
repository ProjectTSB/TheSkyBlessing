#> asset:spawner/065/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:15,Y:7,Z:147}] in overworld positioned 15 7 147 if entity @p[distance=..40] run function asset:island/065/register/register