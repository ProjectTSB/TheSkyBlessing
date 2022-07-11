#> asset:spawner/550/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-123,Y:144,Z:-63}] in overworld positioned -123 144 -63 if entity @p[distance=..40] run function asset:island/550/register/register