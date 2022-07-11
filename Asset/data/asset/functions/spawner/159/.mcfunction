#> asset:spawner/159/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-90,Y:33,Z:265}] in overworld positioned -90 33 265 if entity @p[distance=..40] run function asset:island/159/register/register