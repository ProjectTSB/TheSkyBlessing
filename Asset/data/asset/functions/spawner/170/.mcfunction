#> asset:spawner/170/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-95,Y:103,Z:265}] in overworld positioned -95 103 265 if entity @p[distance=..40] run function asset:island/170/register/register