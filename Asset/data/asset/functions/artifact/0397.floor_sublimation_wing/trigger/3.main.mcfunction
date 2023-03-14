#> asset:artifact/0397.floor_sublimation_wing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0397.floor_sublimation_wing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出(テレポート元)
        playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.3
        playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 0.2
        particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 1 150
        particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 5 30

    # テレポート
        execute at @e[type=area_effect_cloud,tag=B1.Marker,distance=..32,limit=1] rotated as @s run tp @s ~ ~ ~

    # 演出(テレポート後)
        execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 1 150
        execute at @s run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 5 30
        execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.3
        execute at @s run playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 0.2