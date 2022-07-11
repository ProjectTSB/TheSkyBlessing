#> asset:spawner/031/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:88,Y:35,Z:38}] in overworld positioned 88 35 38 if entity @p[distance=..40] run function asset:island/031/register/register