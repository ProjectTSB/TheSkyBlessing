#> asset:sacred_treasure/0248.bow_of_vinderre/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0248.bow_of_vinderre/2.check_condition

#> private
# @private
    #declare tag RandomTP

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く
    execute as @e[type=#lib:living,tag=HurtEntity,distance=..100] run effect give @s poison 20 4

# テレポート処理
    execute if predicate lib:random_pass_per/25 run tag @e[type=#lib:living,tag=HurtEntity,distance=..100] add RandomTP
    tp @e[tag=RandomTP,distance=..100] ^ ^ ^1.5
    execute as @e[tag=RandomTP,distance=..100] at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 1 0
    tag @e[tag=RandomTP] remove RandomTP