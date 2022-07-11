#> asset:spawner/203/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:99,Y:143,Z:-88}] in overworld positioned 99 143 -88 if entity @p[distance=..40] run function asset:island/203/register/register