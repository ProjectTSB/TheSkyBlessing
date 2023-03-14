#> asset:artifact/0373.ice_sorcery/trigger/3.3.beam
#
# ビーム部
#
# @within function asset:artifact/0373.ice_sorcery/trigger/**


# ここから先は神器側の効果の処理を書く

# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add AD.Hit
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add AD.Hit

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,limit=1] add AD.HitTarget

# 演出
    particle minecraft:block blue_ice ~ ~ ~ 0 0 0 2 1 force
    particle minecraft:dolphin ~ ~ ~ 0 0 0 2 1 force
    execute if predicate lib:random_pass_per/10 run particle minecraft:firework ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=AD.Hit] run function asset:artifact/0373.ice_sorcery/trigger/3.4.hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!AD.Hit,distance=..30] run function asset:artifact/0373.ice_sorcery/trigger/3.3.beam