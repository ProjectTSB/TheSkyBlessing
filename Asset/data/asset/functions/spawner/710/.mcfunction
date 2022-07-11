#> asset:spawner/710/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-95,Y:155,Z:-31}] in overworld positioned -95 155 -31 if entity @p[distance=..40] run function asset:island/710/register/register