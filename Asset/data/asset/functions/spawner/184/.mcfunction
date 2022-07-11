#> asset:spawner/184/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:230,Y:132,Z:-31}] in overworld positioned 230 132 -31 if entity @p[distance=..40] run function asset:island/184/register/register