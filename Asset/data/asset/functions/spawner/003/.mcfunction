#> asset:spawner/003/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-18,Y:21,Z:-37}] in overworld positioned -18 21 -37 if entity @p[distance=..40] run function asset:island/003/register/register