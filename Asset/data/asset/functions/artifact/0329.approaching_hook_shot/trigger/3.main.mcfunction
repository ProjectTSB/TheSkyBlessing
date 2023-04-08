#> asset:artifact/0329.approaching_hook_shot/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0329.approaching_hook_shot/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

    # 矢が当たったエンティティに視線方向維持でテレポート
    execute positioned as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run tp @a[tag=this] ~ ~ ~

    execute at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 1 200

    execute at @s run playsound minecraft:entity.shulker.teleport player @a ~ ~ ~ 2 1.5