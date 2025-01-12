#> metric:damage.m
#
# ダメージの耐性・弱点ヒット率を記録する
#
# @input args Condition : Normal || Resist || Weak || Bypass
# @within function api:damage/core/attack

execute store result score $Count Temporary run data get storage metric: Damage.$(Condition) 1
execute store result storage metric: Damage.$(Condition) int 1 run scoreboard players add $Count Temporary 1
scoreboard players reset $Count Temporary
