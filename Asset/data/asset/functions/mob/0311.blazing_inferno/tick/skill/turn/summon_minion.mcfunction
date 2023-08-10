#> asset:mob/0311.blazing_inferno/tick/skill/turn/summon_minion
#
# 敵を召喚
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/turn/tick

# 召喚
    data modify storage api: Argument.ID set value 315
    function api:mob/summon

# ブレイズを投げ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute as @e[type=blaze,distance=..0.1,sort=nearest,limit=1] facing entity @r feet run function lib:motion/
    data remove storage lib: Argument

# テレポート演出を流用
    execute positioned ~ ~1 ~ run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx