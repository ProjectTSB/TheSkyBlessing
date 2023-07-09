#> asset:mob/1004.tultaria/tick/skill/2.meteor_attack/3.activate
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/1.tick

#> SpreadLib
# @private
#declare score_holder $AttackAmount

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 3 0.7

# 召喚
    function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor