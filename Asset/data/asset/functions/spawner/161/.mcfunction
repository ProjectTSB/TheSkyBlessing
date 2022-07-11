#> asset:spawner/161/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-99,Y:163,Z:264}] in overworld positioned -99 163 264 if entity @p[distance=..40] run function asset:island/161/register/register