#> asset:mob/0327.eclael/hurt/app.2.change_phase_hard
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/2.hurt


# 体力検知
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# ハード：体力50%以下の場合本気を出す
    execute if score $HealthPer Temporary matches ..50 run function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations
    execute if score $HealthPer Temporary matches ..50 run tag @s add 93.Phase.HardLatter
    execute if score $HealthPer Temporary matches ..50 run scoreboard players set @s 93.ActionCount 0

# 終了
    scoreboard players reset $HealthPer Temporary
