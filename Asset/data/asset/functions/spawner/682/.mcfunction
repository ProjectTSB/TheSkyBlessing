#> asset:spawner/682/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:410,Y:165,Z:87}] in overworld positioned 410 165 87 if entity @p[distance=..40] run function asset:island/682/register/register