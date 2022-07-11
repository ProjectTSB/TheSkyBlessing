#> asset:spawner/299/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:358,Y:49,Z:243}] in overworld positioned 358 49 243 if entity @p[distance=..40] run function asset:island/299/register/register