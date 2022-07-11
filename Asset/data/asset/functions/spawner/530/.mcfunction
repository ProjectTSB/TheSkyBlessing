#> asset:spawner/530/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-41,Y:37,Z:-85}] in overworld positioned -41 37 -85 if entity @p[distance=..40] run function asset:island/530/register/register