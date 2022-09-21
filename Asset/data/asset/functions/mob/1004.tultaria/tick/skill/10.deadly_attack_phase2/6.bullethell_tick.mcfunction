#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# スキル選択
    execute if score $Random Temporary matches 0..1 at @r positioned ~ ~0.5 ~ run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/7.bullethell_summon_x
    execute if score $Random Temporary matches 2..3 at @r positioned ~ ~0.5 ~ run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/7.bullethell_summon_z

# リセット
    scoreboard players reset $Random Temporary