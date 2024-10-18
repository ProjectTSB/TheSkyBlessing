#> asset_manager:mob/bossbar/init
#
#
#
# @within function asset_manager:mob/triggers/summon/set_data

#> Val
# @private
#declare score_holder $MaxHealth

# 追跡対象の設定
    tag @e[type=#lib:living,tag=BossbarTarget] remove BossbarTarget
    tag @s add BossbarTarget
# ボスバー名に天使の名前を入れる
    bossbar set asset:bossbar name {"selector":"@s"}
# ボスバーに体力を設定する
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $MaxHealth Temporary *= $100 Const
    execute store result bossbar asset:bossbar value store result bossbar asset:bossbar max run scoreboard players get $MaxHealth Temporary
# ボスバーを表示する
    bossbar set asset:bossbar players @a
# リセット
    scoreboard players reset $MaxHealth Temporary
