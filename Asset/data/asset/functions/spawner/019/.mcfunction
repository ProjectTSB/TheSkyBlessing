#> asset:spawner/019/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-122,Y:34,Z:72}] in overworld positioned -122 34 72 if entity @p[distance=..40] run function asset:island/019/register/register