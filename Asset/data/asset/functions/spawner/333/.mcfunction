#> asset:spawner/333/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:286,Y:166,Z:260}] in overworld positioned 286 166 260 if entity @p[distance=..40] run function asset:island/333/register/register