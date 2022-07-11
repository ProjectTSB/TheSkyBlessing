#> asset:spawner/059/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-90,Y:38,Z:124}] in overworld positioned -90 38 124 if entity @p[distance=..40] run function asset:island/059/register/register