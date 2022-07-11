#> asset:spawner/338/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:22,Y:197,Z:444}] in overworld positioned 22 197 444 if entity @p[distance=..40] run function asset:island/338/register/register