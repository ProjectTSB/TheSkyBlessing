#> asset:artifact/0471.stone_cutter_chainsaw/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0471.stone_cutter_chainsaw/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

    # 初期化
        scoreboard players set $7n.Count Temporary 0

    # 演出
        execute positioned ~ ~1 ~ run particle block stone ^ ^ ^0.8 0.1 0.1 0.1 1.0 20
        playsound entity.wandering_trader.drink_potion player @p ~ ~ ~ 0.8 0.3
        playsound block.soul_sand.place player @p ~ ~ ~ 1.0 0.8
        playsound item.totem.use player @a ~ ~ ~ 0.1 2.0

    # クリティカルヒット判定
        execute anchored eyes positioned ^ ^ ^0.1 run function asset:artifact/0471.stone_cutter_chainsaw/trigger/3.1.check_critical

    # ヒット
        execute positioned ^ ^ ^2 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] at @s if entity @p[tag=this, distance=..4] run function asset:artifact/0471.stone_cutter_chainsaw/trigger/3.2.entity

    # 開放
        scoreboard players reset $7n.Count Temporary