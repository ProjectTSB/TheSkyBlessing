#> asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/1.quiz
#
# クイズスキル
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.skill_active

# 自分を透明化する
    execute if score @s 1N.Tick matches 0 run item replace entity @s armor.head with stone{CustomModelData:20019}
    execute if score @s 1N.Tick matches 0 run effect give @s slowness 12 100 true
# 自分を何処かにテレポートさせる
    execute if score @s 1N.Tick matches 20 run function asset:mob/0059.jack_o_lantern/tick/spread_tp

# 眷属をいっぱいだす
    execute if score @s 1N.Tick matches 20 run function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/2.summon

# 自分を表示する
    execute if score @s 1N.Tick matches 20 run item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# hurt時につく被ダメタグがあった場合、クイズに正解して、このスキルを終える
    execute if score @s 1N.Tick matches 20..159 if entity @s[tag=1N.Hurt] run function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/4.quiz_clear

# クイズに失敗した場合、発光する
    execute if score @s 1N.Tick matches 160 run function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/3.glow

    execute if score @s 1N.Tick matches 260.. run function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/quiz_end