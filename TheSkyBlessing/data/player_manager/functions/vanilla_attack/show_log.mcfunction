#> player_manager:vanilla_attack/show_log
#
#
#
# @within function core:handler/attack

#> this
# @private
#declare tag this

# ダメージを表示形式に変換する
    scoreboard players operation $Fluctuation Lib = @s AttackEvent
    scoreboard players operation $Fluctuation Lib *= $-10 Const
# this付与
    tag @s add this
# 攻撃した敵の座標で表示する
    execute as @e[tag=AttackedEntity] if score @s AttackedEntity = @p[tag=this] UserID at @s run function lib:status_log/show_health
# リセット
    tag @s remove this