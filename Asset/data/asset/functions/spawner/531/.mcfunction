#> asset:spawner/531/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-41,Y:38,Z:-63}] in overworld positioned -41 38 -63 if entity @p[distance=..40] run function asset:island/531/register/register