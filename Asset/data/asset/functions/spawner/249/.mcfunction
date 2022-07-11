#> asset:spawner/249/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-155,Y:108,Z:-110}] in overworld positioned -155 108 -110 if entity @p[distance=..40] run function asset:island/249/register/register