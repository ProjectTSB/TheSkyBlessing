#> asset:spawner/733/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-109,Y:220,Z:-42}] in overworld positioned -109 220 -42 if entity @p[distance=..40] run function asset:island/733/register/register