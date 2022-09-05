#> asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/4.quiz_clear
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/1.quiz

# 1tick後に消す
    schedule function asset:mob/0059.jack_o_lantern/tick/dummy_kill 1t replace
# 演出
    playsound ogg:mob.strider.retreat5 hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.7 100
# 割合ダメージ
    execute store result storage lib: Argument.Damage float 0.08 run function api:mob/get_max_health
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value 1b
# 補正
    function lib:damage/modifier
# ダメージ
    function lib:damage/
# リセット
    function lib:damage/reset

# クイズエンド
    function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/quiz_end