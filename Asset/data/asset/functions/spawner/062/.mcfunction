#> asset:spawner/062/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:44,Y:5,Z:170}] in overworld positioned 44 5 170 if entity @p[distance=..40] run function asset:island/062/register/register