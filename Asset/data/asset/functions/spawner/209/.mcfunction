#> asset:spawner/209/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:338,Y:85,Z:-77}] in overworld positioned 338 85 -77 if entity @p[distance=..40] run function asset:island/209/register/register