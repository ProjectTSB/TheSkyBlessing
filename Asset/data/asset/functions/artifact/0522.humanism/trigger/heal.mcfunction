#> asset:artifact/0522.humanism/trigger/heal
#
#
#
# @within function asset:artifact/0522.humanism/trigger/3.main

#> Val
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurHealth

# 現在/最大体力を取得する(100倍)
    function api:data_get/health
    execute store result score $CurHealth Temporary run data get storage api: Health 100
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 100
# 失った体力(100倍)を計算する
    scoreboard players operation $MaxHealth Temporary -= $CurHealth Temporary
# 失った体力(100倍)の0.01倍*75%を回復量にする
    execute store result storage lib: Argument.Heal double 0.0075 run scoreboard players get $MaxHealth Temporary
# 回復量を固定する
    data modify storage lib: Argument.FixedHeal set value true
# 回復
    function lib:heal/
# リセット
    function lib:heal/reset
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurHealth Temporary