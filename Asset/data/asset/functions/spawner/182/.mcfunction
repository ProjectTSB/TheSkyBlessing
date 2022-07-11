#> asset:spawner/182/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:219,Y:149,Z:-48}] in overworld positioned 219 149 -48 if entity @p[distance=..40] run function asset:island/182/register/register