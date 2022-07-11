#> asset:spawner/552/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-125,Y:166,Z:-62}] in overworld positioned -125 166 -62 if entity @p[distance=..40] run function asset:island/552/register/register