#> asset:spawner/754/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:181,Y:182,Z:-188}] in overworld positioned 181 182 -188 if entity @p[distance=..40] run function asset:island/754/register/register