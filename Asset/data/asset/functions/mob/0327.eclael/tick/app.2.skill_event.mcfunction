#> asset:mob/0327.eclael/tick/app.2.skill_event
#
# 付与されているスキルタグに応じて処理を振り分ける
#
# @within function asset:mob/0327.eclael/tick/2.tick

###########################################################################
## 汎用

## 登場演出
    # execute if entity @s[tag=8T.Skill.Rod.Start] run function asset:mob/0327.eclael/tick/app.skill_events/00_rod_start/1.main

## 抜刀
    # execute if entity @s[tag=8T.Skill.Rod.ToSword] run function asset:mob/0327.eclael/tick/app.skill_events/09_rod_to_sword/1.main

###########################################################################
## 前半

## 待機
    execute if entity @s[tag=93.Skill.Former.Idle] run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/1.main
    ## 居眠り
        execute if entity @s[tag=93.Skill.Former.Idle.Sleep] run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main
    
## 居合斬り
    execute if entity @s[tag=93.Skill.Former.Iai] run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main
    ## 居合斬り・怯み
        execute if entity @s[tag=93.Skill.Former.Iai.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main

## 連続斬り
    execute if entity @s[tag=93.Skill.Former.Slash] run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

## 射撃
    execute if entity @s[tag=93.Skill.Former.Shot] run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

## 曲射
    execute if entity @s[tag=93.Skill.Former.UpperShot] run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/1.main
    ## 曲射・怯み
        execute if entity @s[tag=93.Skill.Former.UpperShot.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/1.main

## 魔法
    execute if entity @s[tag=93.Skill.Former.Magic] run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/1.main

## 簡易魔法
    execute if entity @s[tag=93.Skill.Former.ShortMagic] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

###########################################################################
## 後半

## 待機
    execute if entity @s[tag=93.Skill.Latter.Idle] run function asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/1.main

## 遠距離斬り
    execute if entity @s[tag=93.Skill.Latter.Whip,tag=!93.Temp.MoveToLeft] run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.main
    execute if entity @s[tag=93.Skill.Latter.Whip,tag=93.Temp.MoveToLeft] run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.1.main_mirror

## 七連斬り
    execute if entity @s[tag=93.Skill.Latter.Quick] run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/1.main
