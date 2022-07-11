#> asset:spawner/278/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-180,Y:216,Z:-2}] in overworld positioned -180 216 -2 if entity @p[distance=..40] run function asset:island/278/register/register