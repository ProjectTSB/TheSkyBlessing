#> asset:spawner/014/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-122,Y:27,Z:79}] in overworld positioned -122 27 79 if entity @p[distance=..40] run function asset:island/014/register/register