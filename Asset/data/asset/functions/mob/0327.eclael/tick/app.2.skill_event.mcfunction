#> asset:mob/0327.eclael/tick/app.2.skill_event
#
# 付与されているスキルタグに応じて処理を振り分ける
#
# @within function asset:mob/0327.eclael/tick/2.tick

###########################################################################
## 汎用

## 登場演出
    # execute if entity @s[tag=8T.Skill.Rod.Start] run function asset:mob/0327.eclael/tick/app.skill_events/00_rod_start/1.main

## 武器持ち替え
    # execute if entity @s[tag=8T.Skill.Rod.ToSword] run function asset:mob/0327.eclael/tick/app.skill_events/09_rod_to_sword/1.main

###########################################################################
## 前半

## 待機
    execute if entity @s[tag=93.Skill.Former.Idle] run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/1.main

## 寝る

## 居合斬り・単発
    # execute if entity @s[tag=8T.Skill.Rod.Attack] run function asset:mob/0327.eclael/tick/app.skill_events/02_rod_attack/1.main

## 居合斬り・連続

## 射撃

## 曲射

## 魔法

###########################################################################
## 後半

