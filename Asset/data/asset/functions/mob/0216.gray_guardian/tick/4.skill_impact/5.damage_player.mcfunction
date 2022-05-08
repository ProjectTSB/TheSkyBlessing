#> asset:mob/0216.gray_guardian/tick/4.skill_impact/5.damage_player
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_impact/4.damage

# OnGround取得
    function api:data_get/on_ground
# ダメージ
    execute if data storage api: {OnGround:1b} run function lib:damage/

# 上に飛ばす
    execute if data storage api: {OnGround:1b} run effect give @s levitation 1 20 true