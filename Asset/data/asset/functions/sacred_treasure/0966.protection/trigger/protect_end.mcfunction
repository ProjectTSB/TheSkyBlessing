#> asset:sacred_treasure/0966.protection/trigger/protect_end
#
#
#
# @within function asset:sacred_treasure/0966.protection/trigger/schedule_task

# 防御
    data modify storage api: Argument.UUID set value [I;1,1,966,2]
    function api:player_modifier/defense/base/remove

# 攻撃力
    data modify storage api: Argument.UUID set value [I;1,1,966,2]
    function api:player_modifier/attack/base/remove

# MP回復
    data modify storage api: Argument.UUID set value [I;1,1,966,2]
    function api:player_modifier/mp_regen/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 1-0-1-0-3c600000002

# 処理時間スコア削除
    scoreboard players reset @s QU.Protected