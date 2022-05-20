#> asset:mob/0059.jack_o_lantern/tick/4.skill_active
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/2.tick

# クイズ
    execute if entity @s[tag=1N.SkillQuiz] run function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/1.quiz

# メテオ
    execute if entity @s[tag=1N.SkillMeteor] run function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/1.meteor

# ミサイル
    execute if entity @s[tag=1N.SkillMissile] run function asset:mob/0059.jack_o_lantern/tick/3.missile/1.missile