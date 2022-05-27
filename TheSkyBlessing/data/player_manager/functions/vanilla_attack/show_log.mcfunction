#> player_manager:vanilla_attack/show_log
#
#
#
# @within function core:handler/attack

# ダメージを表示形式に変換する
    execute store result storage api: Argument.Fluctuation double -0.1 run scoreboard players get @s AttackEvent
# 攻撃した敵の座標で表示する
    execute as @e[tag=AttackedEntity] if score @s AttackedEntity = @p[tag=this] UserID at @s run function api:status_log/show_health