#> asset:spawner/007/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-30,Y:22,Z:42}] in overworld positioned -30 22 42 if entity @p[distance=..40] run function asset:island/007/register/register