#> asset:spawner/041/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:181,Y:11,Z:-16}] in overworld positioned 181 11 -16 if entity @p[distance=..40] run function asset:island/041/register/register