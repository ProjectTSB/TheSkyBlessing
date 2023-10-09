#> asset:mob/0317.haruclaire/hurt/app.1.change_weapon
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0317.haruclaire/hurt/2.hurt


# 体力が半分以下かどうかを検知する
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 体力半分以下を検知
    execute if score $HealthPer Temporary matches ..50 run function asset:mob/0317.haruclaire/tick/app.general/7.start_change_animation
    scoreboard players reset $HealthPer Temporary
