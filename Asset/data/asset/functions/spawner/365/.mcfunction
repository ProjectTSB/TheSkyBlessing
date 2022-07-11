#> asset:spawner/365/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-69,Y:49,Z:-44}] in overworld positioned -69 49 -44 if entity @p[distance=..40] run function asset:island/365/register/register