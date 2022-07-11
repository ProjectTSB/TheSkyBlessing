#> asset:spawner/711/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-87,Y:155,Z:-31}] in overworld positioned -87 155 -31 if entity @p[distance=..40] run function asset:island/711/register/register