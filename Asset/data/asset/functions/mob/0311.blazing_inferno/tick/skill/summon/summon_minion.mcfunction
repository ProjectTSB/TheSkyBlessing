#> asset:mob/0311.blazing_inferno/tick/skill/summon/summon_minion
#
# 敵を召喚
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/summon/tick

# 召喚
    data modify storage api: Argument.ID set value 315
    function api:mob/summon

# テレポート演出を流用
    execute positioned ~ ~1 ~ run function asset:mob/0311.blazing_inferno/tick/skill/teleport_vfx