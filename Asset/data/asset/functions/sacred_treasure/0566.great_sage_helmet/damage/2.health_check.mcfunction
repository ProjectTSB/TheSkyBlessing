#> asset:sacred_treasure/0566.great_sage_helmet/damage/2.health_check
#
#
#
# @within function asset:sacred_treasure/0566.great_sage_helmet/damage/1.fullset_check

#> Val
# @private
    #declare score_holder $FQ.MaxHP
    #declare score_holder $FQ.CurrentHP
    #declare score_holder $FQ.PercentHP

# 体力
    # 最大体力を取得
        execute store result score $FQ.MaxHP Temporary run attribute @s minecraft:generic.max_health get

    # 現在体力を取得
        function api:data_get/health
        execute store result score $FQ.CurrentHP Temporary run data get storage api: Health 1000

    # 割合
        scoreboard players operation $FQ.CurrentHP Temporary /= $FQ.MaxHP Temporary

# 体力が20%以下かつ10%の確率で喋る
    execute if score $FQ.CurrentHP Temporary matches ..201 if predicate lib:random_pass_per/10 run function asset:sacred_treasure/0566.great_sage_helmet/damage/3.talk
# リセット
    scoreboard players reset $FQ.MaxHP Temporary
    scoreboard players reset $FQ.CurrentHP Temporary
