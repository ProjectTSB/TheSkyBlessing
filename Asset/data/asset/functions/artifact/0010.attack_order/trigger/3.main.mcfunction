#> asset:artifact/0010.attack_order/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0010.attack_order/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.wither.hurt player @s ~ ~ ~ 20 0.3

# 召喚
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"]}
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"]}
    summon minecraft:snow_golem ~ ~ ~ {Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}
    summon minecraft:snow_golem ~ ~ ~ {Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"],Passengers:[{id:"minecraft:snow_golem", Pumpkin:0b, Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}]}
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"],Passengers:[{id:"minecraft:snow_golem", Pumpkin:0b, Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}]}