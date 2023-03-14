#> asset:artifact/0967.enhanced_protection/trigger/protect_end
#
#
#
# @within function asset:artifact/0967.enhanced_protection/trigger/schedule_task

# 防御
    data modify storage api: Argument.UUID set value [I;1,1,967,2]
    function api:modifier/defense/base/remove

# 攻撃力
    data modify storage api: Argument.UUID set value [I;1,1,967,2]
    function api:modifier/attack/base/remove

# MP回復
    data modify storage api: Argument.UUID set value [I;1,1,967,2]
    function api:modifier/mp_regen/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 1-0-1-0-3c700000002

# 処理時間スコア削除
    scoreboard players reset @s QV.Protected