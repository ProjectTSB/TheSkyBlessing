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

## 怯み
    execute if entity @s[tag=93.Skill.Latter.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/1.main
    ## 怯み・バク転
        execute if entity @s[tag=93.Skill.Latter.Damage.Move] run function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/1.main

## ガード
    execute if entity @s[tag=93.Skill.Latter.Guard.0] run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.1.main_0
    execute if entity @s[tag=93.Skill.Latter.Guard.1] run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.2.main_1
    execute if entity @s[tag=93.Skill.Latter.Guard.2] run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.3.main_2

## 袈裟斬り
    execute if entity @s[tag=93.Skill.Latter.MoveSlash] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/1.1.main_near
    ## 袈裟斬り・ハード用
        execute if entity @s[tag=93.Skill.Latter.MoveSlash] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/1.main

## 居合斬り
    execute if entity @s[tag=93.Skill.Latter.Iai] run function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/1.main
    ## 居合斬り・怯み
        execute if entity @s[tag=93.Skill.Latter.Iai.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/19_1_latter_attack_iai_damage/1.main

## 射撃
    execute if entity @s[tag=93.Skill.Latter.Shot] run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/1.main

## 魔法
    execute if entity @s[tag=93.Skill.Latter.Magic] run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/1.main

## 突き
    execute if entity @s[tag=93.Skill.Latter.Spear,tag=!93.Temp.MoveToLeft] run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/1.main
    ## 移動突き
        execute if entity @s[tag=93.Skill.Latter.Spear,tag=93.Temp.MoveToLeft] run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/1.1.main_move
    ## 突き・怯み
        execute if entity @s[tag=93.Skill.Latter.Spear.Damage] run function asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/1.main

## 追撃
    execute if entity @s[tag=93.Skill.Latter.Pursuit] run function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/1.main

## 電光石火
    execute if entity @s[tag=93.Skill.Latter.Move] run function asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/1.main
    ## 電光石火・帰還
        execute if entity @s[tag=93.Skill.Latter.Move.Back] run function asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/1.1.main_back

## 大技：長剣
    execute if entity @s[tag=93.Skill.Latter.Whip,tag=!93.Temp.MoveToLeft] run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.main
    ## 長剣・左右反転
    execute if entity @s[tag=93.Skill.Latter.Whip,tag=93.Temp.MoveToLeft] run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.1.main_mirror

## 大技：七連斬り
    execute if entity @s[tag=93.Skill.Latter.Quick] run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/1.main

## 大技：移動射撃
    execute if entity @s[tag=93.Skill.Latter.MoveShot] run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/1.1.main_mirror
    ## 遷移：紅葉舞
        execute if entity @s[tag=93.Skill.Latter.Momiji] run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/1.main

## 大技：移動射撃・単発
    execute if entity @s[tag=93.Skill.Latter.MoveShot.Single] run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/1.main
    ## 遷移：宙船
        execute if entity @s[tag=93.Skill.Latter.Sorafune] run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/1.main

## 大技：回転斬り
    execute if entity @s[tag=93.Skill.Latter.SpinSlash] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.main
    ## 回転斬り・ハード用
        execute if entity @s[tag=93.Skill.Latter.SpinSlash] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.1.main_hard
