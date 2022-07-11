#> asset:spawner/036/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:163,Y:12,Z:-77}] in overworld positioned 163 12 -77 if entity @p[distance=..40] run function asset:island/036/register/register