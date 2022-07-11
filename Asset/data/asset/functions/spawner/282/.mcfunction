#> asset:spawner/282/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-186,Y:186,Z:4}] in overworld positioned -186 186 4 if entity @p[distance=..40] run function asset:island/282/register/register