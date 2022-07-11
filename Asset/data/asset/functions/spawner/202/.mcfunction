#> asset:spawner/202/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:111,Y:143,Z:-77}] in overworld positioned 111 143 -77 if entity @p[distance=..40] run function asset:island/202/register/register