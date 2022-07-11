#> asset:spawner/362/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-65,Y:159,Z:145}] in overworld positioned -65 159 145 if entity @p[distance=..40] run function asset:island/362/register/register