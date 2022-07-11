#> asset:spawner/058/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-100,Y:35,Z:138}] in overworld positioned -100 35 138 if entity @p[distance=..40] run function asset:island/058/register/register