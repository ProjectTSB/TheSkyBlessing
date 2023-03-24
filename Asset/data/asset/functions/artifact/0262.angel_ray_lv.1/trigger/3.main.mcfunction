#> asset:artifact/0262.angel_ray_lv.1/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0262.angel_ray_lv.1/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# レイ用Entityの初期化
    summon minecraft:area_effect_cloud ~ ~1.4 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["7A.AngelRay","Init","Object","Uninterferable"]}
    execute positioned ~ ~1.4 ~ run tp @e[type=area_effect_cloud,tag=Init,distance=..0.01] ~ ~ ~ ~ ~
# 初回演出
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2b,Amplifier:5b,Duration:13,ShowParticles:0b}]}
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7
# レイ処理
    # 処理
        execute positioned ~ ~1.4 ~ as @e[type=area_effect_cloud,tag=Init,distance=..0.01] run function asset:artifact/0262.angel_ray_lv.1/trigger/ray
    # 次tick以降用にschedule予約
        schedule function asset:artifact/0262.angel_ray_lv.1/trigger/recursive 1t
# 効果処理
    execute positioned ~ ~1.4 ~ run function asset:artifact/0262.angel_ray_lv.1/trigger/effect/
# リセット
    execute positioned ~ ~1.4 ~ run tag @e[type=area_effect_cloud,tag=Init,distance=..0.01] remove Init