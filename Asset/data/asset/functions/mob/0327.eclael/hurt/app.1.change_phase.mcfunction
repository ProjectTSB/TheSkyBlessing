#> asset:mob/0327.eclael/hurt/app.1.change_phase
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/2.hurt


# 体力が半分以下かどうかを検知する
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 体力60%以下の場合，後半戦に移行
    execute if score $HealthPer Temporary matches ..60 run function asset:mob/0327.eclael/tick/app.general/7.start_change_animation
    scoreboard players reset $HealthPer Temporary
