#> asset:spawner/683/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:419,Y:170,Z:83}] in overworld positioned 419 170 83 if entity @p[distance=..40] run function asset:island/683/register/register