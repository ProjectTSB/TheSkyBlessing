#> asset:sacred_treasure/0017.harmful_books/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0017.harmful_books/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# ランダムなエフェクト
    execute if predicate lib:random_pass_per/40 run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] slowness 30 5 true
    execute if predicate lib:random_pass_per/40 run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] weakness 300 10 true
    execute if predicate lib:random_pass_per/20 run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] levitation 10 3 true
    execute if predicate lib:random_pass_per/10 run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] wither 10 50 true
    execute if predicate lib:random_pass_per/10 run effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] speed 10 255 true
    effect give @e[type=#lib:living,tag=HurtEntity,distance=..10] poison 30 5 false

# 演出
    execute at @e[type=#lib:living,tag=HurtEntity,distance=..10] run particle witch ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..10]
    playsound minecraft:entity.witch.ambient master @a[distance=..10] ~ ~ ~ 1 1.2