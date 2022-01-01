#> asset:sacred_treasure/0248.bow_of_vinderre/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0248.bow_of_vinderre/trigger/2.check_condition

#> private
# @private
    #declare tag RandomTP

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run effect give @s poison 20 4

# テレポート処理
    execute if predicate lib:random_pass_per/25 as @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run tag @s add RandomTP
    tp @e[type=#lib:living,type=!player,tag=Victim,tag=RandomTP,distance=..100] ^ ^ ^1.5
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=RandomTP,distance=..2] run playsound minecraft:entity.enderman.teleport ambient @a ^ ^ ^1.5 1 1 0
    tag @e[type=#lib:living,type=!player,tag=Victim,tag=RandomTP,distance=..100] remove RandomTP