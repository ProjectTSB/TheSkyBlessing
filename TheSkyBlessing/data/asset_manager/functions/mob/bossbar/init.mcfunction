#> asset_manager:mob/bossbar/init
#
#
#
# @within function asset_manager:mob/summon/set_data

# 追跡対象の設定
    tag @e[type=#lib:living,tag=BossbarTarget] remove BossbarTarget
    tag @s add BossbarTarget
# ボスバー名に天使の名前を入れる
    bossbar set asset:bossbar name {"selector":"@s"}
# ボスバーに体力を設定する
    execute store result bossbar asset:bossbar value store result bossbar asset:bossbar max run function api:mob/get_max_health
# ボスバーを表示する
    bossbar set asset:bossbar players @a