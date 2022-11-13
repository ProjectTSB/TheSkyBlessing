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
    execute if data storage api: {OnGround:1b} run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:25,Amplifier:80b,Duration:3,ShowParticles:0b},{Id:11,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b}]}