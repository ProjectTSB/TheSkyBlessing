#> asset:spawner/192/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:84,Y:170,Z:-89}] in overworld positioned 84 170 -89 if entity @p[distance=..40] run function asset:island/192/register/register