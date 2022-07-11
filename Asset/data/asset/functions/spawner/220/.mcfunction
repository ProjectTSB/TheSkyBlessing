#> asset:spawner/220/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:163,Y:82,Z:-110}] in overworld positioned 163 82 -110 if entity @p[distance=..40] run function asset:island/220/register/register