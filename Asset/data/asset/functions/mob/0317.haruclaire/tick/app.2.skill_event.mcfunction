#> asset:mob/0317.haruclaire/tick/app.2.skill_event
#
# 付与されているスキルタグに応じて処理を振り分ける
#
# @within function asset:mob/0317.haruclaire/tick/2.tick

###########################################################################
## 汎用


###########################################################################
## 杖モード

## 待機
    execute if entity @s[tag=8T.Skill.Rod.Idle] run function asset:mob/0317.haruclaire/tick/app.skill_events/01_rod_idle/1.main

## つらら
    execute if entity @s[tag=8T.Skill.Rod.IcePillar] run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main

## ほげ


###########################################################################
## 剣モード

## ふが