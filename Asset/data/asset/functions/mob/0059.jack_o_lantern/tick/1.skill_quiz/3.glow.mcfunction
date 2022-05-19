#> asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/3.glow
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.skill_quiz/1.quiz

# 発光
    item replace entity @s armor.head with jack_o_lantern{CustomModelData:20017}
    tag @s add 1N.Glow
    effect give @s speed 4 9 true

# キル
    tp @e[type=zombie,scores={MobID=224},distance=..30,limit=8] ~ -100 ~