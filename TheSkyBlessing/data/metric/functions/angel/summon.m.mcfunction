#> metric:angel/summon.m
#
# 天使召喚時のデータを記録する
#
# @input args ID : int
# @within function asset_manager:mob/summon/set_data

#> private
# @private
    #declare objective MobMaxHealthMultiplier

data modify storage metric: Args.SummonTime set from storage global Time
execute store result storage metric: Args.Multiplier double 0.01 run scoreboard players get @s MobMaxHealthMultiplier
execute unless data storage metric: Angel.$(ID).FirstProgress store result storage metric: Args.FirstProgress int 1 run scoreboard players get $PurifiedIslands Global
data modify storage metric: Angel.$(ID) set from storage metric: Args
data remove storage metric: Args
