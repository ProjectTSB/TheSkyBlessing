#> metric:angel/kill.m
#
# 天使撃破時のデータを記録する
#
# @input args id : int
# @within function asset_manager:mob/triggers/

data modify storage metric: Angel.$(id).KillTime set from storage global Time
