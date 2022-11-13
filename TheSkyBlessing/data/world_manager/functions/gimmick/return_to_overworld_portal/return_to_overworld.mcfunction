#> world_manager:gimmick/return_to_overworld_portal/return_to_overworld
#
# 地上に帰る
#
# @within function world_manager:gimmick/return_to_overworld_portal/main

# エフェクト
    effect give @s blindness 2 0 true

# ワープ前でサウンド
    execute at @s run playsound entity.enderman.teleport block @a ~ ~ ~ 2 1

# 帰還(交易島テレポーター行き)
    execute in overworld run tp @s -15 21.00 -1 145 0

# ワープ先でもサウンド
    execute at @s run playsound entity.enderman.teleport block @a ~ ~ ~ 2 1