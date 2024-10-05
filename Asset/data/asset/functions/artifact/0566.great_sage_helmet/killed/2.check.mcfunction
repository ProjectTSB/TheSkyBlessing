#> asset:artifact/0566.great_sage_helmet/killed/2.check
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/killed/1.fullset_check

# 周囲に敵モブがいる、4%の確率で話してくる
    execute if entity @e[tag=Enemy,distance=..35] if predicate lib:random_pass_per/4 run function asset:artifact/0566.great_sage_helmet/killed/3.talk

# 周囲に敵モブがいなくなった場合、10%の確率で話してくる
    execute unless entity @e[tag=Enemy,distance=..35] if predicate lib:random_pass_per/10 run function asset:artifact/0566.great_sage_helmet/killed/4.talk_genocide