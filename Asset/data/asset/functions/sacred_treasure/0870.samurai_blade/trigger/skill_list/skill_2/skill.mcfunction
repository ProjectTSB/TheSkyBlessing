#> asset:sacred_treasure/0870.samurai_blade/trigger/skill_list/skill_2/skill
#
#
#
# @within function asset:sacred_treasure/0870.samurai_blade/trigger/skill_list/skill_active

# 剣を振る
    execute anchored eyes run function asset:sacred_treasure/0870.samurai_blade/trigger/particle/particle2
    function asset:sacred_treasure/0870.samurai_blade/trigger/slash
# スコアを消す
    scoreboard players reset @s O6.Time