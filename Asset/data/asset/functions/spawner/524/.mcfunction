#> asset:spawner/524/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:95,Y:31,Z:142}] in overworld positioned 95 31 142 if entity @p[distance=..40] run function asset:island/524/register/register