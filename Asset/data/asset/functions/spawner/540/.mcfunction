#> asset:spawner/540/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-66,Y:48,Z:-57}] in overworld positioned -66 48 -57 if entity @p[distance=..40] run function asset:island/540/register/register