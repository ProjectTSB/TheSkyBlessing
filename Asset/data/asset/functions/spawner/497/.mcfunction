#> asset:spawner/497/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:109,Y:20,Z:39}] in overworld positioned 109 20 39 if entity @p[distance=..40] run function asset:island/497/register/register