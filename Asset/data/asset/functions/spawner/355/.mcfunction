#> asset:spawner/355/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:62,Y:220,Z:86}] in overworld positioned 62 220 86 if entity @p[distance=..40] run function asset:island/355/register/register