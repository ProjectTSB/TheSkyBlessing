#> asset:mob/0301.sinful_thoughts/tick/common/debuff
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/**
# 体力回復量-100%を付与
    data modify storage api: Argument.UUID set value [I;1,2,301,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add

# スケジュールループ
    scoreboard players set @s 8D.DebuffTime 160
    schedule function asset:mob/0301.sinful_thoughts/player_process/1.loop 1t replace