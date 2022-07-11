#> asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/quiz_end
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/**

# 頭を変える
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 共通リセット処理
    function asset:mob/0059.jack_o_lantern/tick/reset