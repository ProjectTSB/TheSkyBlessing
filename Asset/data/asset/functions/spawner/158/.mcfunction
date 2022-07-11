#> asset:spawner/158/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-102,Y:22,Z:256}] in overworld positioned -102 22 256 if entity @p[distance=..40] run function asset:island/158/register/register