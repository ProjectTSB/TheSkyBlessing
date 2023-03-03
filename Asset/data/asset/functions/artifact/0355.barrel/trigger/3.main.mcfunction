#> asset:artifact/0355.barrel/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0355.barrel/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 樽召喚
        execute at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..8] run summon armor_stand ~ ~1.8 ~ {Tags:["9V.Barrel","Projectile","Uninterferable"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b}]}
    # tick予約
        schedule function asset:artifact/0355.barrel/trigger/3.1.tick_base 1t replace
    # 演出
        particle happy_villager ~ ~ ~ 0.5 0.5 0.5 1 30
        playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 1.5