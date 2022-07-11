#> asset:spawner/013/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-129,Y:12,Z:79}] in overworld positioned -129 12 79 if entity @p[distance=..40] run function asset:island/013/register/register