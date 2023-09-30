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

## 居合斬り
    execute if entity @s[tag=93.Skill.Former.Iai] run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main
    ## 居合斬り・怯み
        execute if entity @s[tag=93.Skill.Former.Iai.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main

## 連続斬り
    execute if entity @s[tag=93.Skill.Former.Slash] run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

## 射撃
    execute if entity @s[tag=93.Skill.Former.Shot] run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

## 曲射

## 魔法

###########################################################################
## 後半
