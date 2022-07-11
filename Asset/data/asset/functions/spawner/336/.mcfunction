#> asset:spawner/336/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-16,Y:193,Z:433}] in overworld positioned -16 193 433 if entity @p[distance=..40] run function asset:island/336/register/register