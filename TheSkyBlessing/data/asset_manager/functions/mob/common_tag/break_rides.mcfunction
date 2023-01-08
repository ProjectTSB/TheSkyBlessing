#> asset_manager:mob/common_tag/break_rides
#
# 乗ったボートやトロッコを粉砕する。アイテムは返してやらん。
#
# @within function asset_manager:mob/common_tag/

# 演出がほしいな
    # トロッコ
        execute if entity @e[type=minecart,distance=..1,sort=nearest,limit=1] run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 2

    # ボート
        execute if entity @e[type=boat,distance=..1,sort=nearest,limit=1] run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 1.2
        execute if entity @e[type=chest_boat,distance=..1,sort=nearest,limit=1] run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 1.2

    # 共通パーティクル
        particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 1 10
        particle minecraft:poof ~ ~1 ~ 0.2 0.2 0.2 0.1 20

# プレイヤーが置ける乗り物を破壊
    kill @e[type=#lib:placeable_vehicles,distance=..1,sort=nearest,limit=1]