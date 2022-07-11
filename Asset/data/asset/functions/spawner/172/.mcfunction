#> asset:spawner/172/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-100,Y:202,Z:247}] in overworld positioned -100 202 247 if entity @p[distance=..40] run function asset:island/172/register/register