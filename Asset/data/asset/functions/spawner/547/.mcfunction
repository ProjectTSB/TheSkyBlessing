#> asset:spawner/547/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-57,Y:103,Z:-32}] in overworld positioned -57 103 -32 if entity @p[distance=..40] run function asset:island/547/register/register