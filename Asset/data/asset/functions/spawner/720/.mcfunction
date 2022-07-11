#> asset:spawner/720/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-208,Y:91,Z:223}] in overworld positioned -208 91 223 if entity @p[distance=..40] run function asset:island/720/register/register