#> asset:mob/1004.tultaria/tick/7.star_summon/3.summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/7.star_summon/1.star_summon
#> private
# @private
    #declare score_holder $Random

# 演出
    execute at @a[distance=..60] run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 0.7

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算するやーつ
    scoreboard players operation $Random Temporary %= $4 Const

# 召喚する
    function asset:mob/1004.tultaria/tick/7.star_summon/4.summon_star
    function asset:mob/1004.tultaria/tick/7.star_summon/4.summon_star
    function asset:mob/1004.tultaria/tick/7.star_summon/4.summon_star
    execute if predicate lib:random_pass_per/40 run function asset:mob/1004.tultaria/tick/7.star_summon/4.summon_star
    execute if predicate lib:random_pass_per/30 run function asset:mob/1004.tultaria/tick/7.star_summon/4.summon_star

# リセット
    scoreboard players reset $Random Temporary
