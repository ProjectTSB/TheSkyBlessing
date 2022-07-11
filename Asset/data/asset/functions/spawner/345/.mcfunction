#> asset:spawner/345/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:53,Y:156,Z:337}] in overworld positioned 53 156 337 if entity @p[distance=..40] run function asset:island/345/register/register