#> asset:sacred_treasure/0291.ender_chest_carrier/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/2.check_condition

#> private
# @private
    #declare tag YvCarrier

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# 警告
    execute unless block ~ ~ ~ ender_chest if predicate lib:is_sneaking run tellraw @s {"text":"足元にエンダーチェストがありません","color":"red"}
    execute unless entity @e[type=bee,tag=YvCarrier,distance=..2,sort=nearest] unless predicate lib:is_sneaking run tellraw @s {"text":"近くにキャリアーがいません","color":"red"}
    execute unless block ~ ~.2 ~ #lib:air if entity @e[type=bee,tag=YvCarrier,distance=..2,sort=nearest] unless predicate lib:is_sneaking run tellraw @s {"text":"そこには置けません","color":"red"}

# 変換 エンチェス→キャリアー
    execute if block ~ ~ ~ ender_chest if predicate lib:is_sneaking run function asset:sacred_treasure/0291.ender_chest_carrier/3.1.summon_carrier

# 変換 キャリアー→エンチェス
    execute unless predicate lib:is_sneaking if block ~ ~.2 ~ #lib:air if entity @e[type=bee,tag=YvCarrier,distance=..2,sort=nearest] as @e[type=bee,tag=YvCarrier,distance=..2,sort=nearest,limit=1] at @s run function asset:sacred_treasure/0291.ender_chest_carrier/3.2.carrier_conversion

# キャリアーの紐づけとか
    function asset:sacred_treasure/0291.ender_chest_carrier/3.3.carrier_manager

