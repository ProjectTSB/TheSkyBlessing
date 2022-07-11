#> asset:spawner/287/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-169,Y:126,Z:214}] in overworld positioned -169 126 214 if entity @p[distance=..40] run function asset:island/287/register/register