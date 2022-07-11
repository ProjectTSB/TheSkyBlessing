#> asset:spawner/074/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:203,Y:9,Z:131}] in overworld positioned 203 9 131 if entity @p[distance=..40] run function asset:island/074/register/register