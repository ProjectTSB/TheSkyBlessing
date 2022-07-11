#> asset:spawner/274/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-108,Y:112,Z:43}] in overworld positioned -108 112 43 if entity @p[distance=..40] run function asset:island/274/register/register