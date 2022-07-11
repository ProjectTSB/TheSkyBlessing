#> asset:spawner/193/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:88,Y:180,Z:-89}] in overworld positioned 88 180 -89 if entity @p[distance=..40] run function asset:island/193/register/register