#> asset:spawner/534/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-41,Y:38,Z:-121}] in overworld positioned -41 38 -121 if entity @p[distance=..40] run function asset:island/534/register/register