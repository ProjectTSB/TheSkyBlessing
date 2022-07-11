#> asset:spawner/270/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-189,Y:103,Z:118}] in overworld positioned -189 103 118 if entity @p[distance=..40] run function asset:island/270/register/register