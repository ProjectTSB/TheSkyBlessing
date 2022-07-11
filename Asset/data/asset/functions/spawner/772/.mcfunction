#> asset:spawner/772/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:178,Y:159,Z:-203}] in overworld positioned 178 159 -203 if entity @p[distance=..40] run function asset:island/772/register/register