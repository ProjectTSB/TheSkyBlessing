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

## 杖殴り
    execute if entity @s[tag=8T.Skill.Rod.Attack] run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main

## つらら
    execute if entity @s[tag=8T.Skill.Rod.IcePillar] run function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main

## レーザー
    execute if entity @s[tag=8T.Skill.Rod.Laser] run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/1.main

## 氷弾
    execute if entity @s[tag=8T.Skill.Rod.IceBullet] run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/1.main

## 射撃
    execute if entity @s[tag=8T.Skill.Rod.Shot] run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/1.main

## 移動射撃
    execute if entity @s[tag=8T.Skill.Rod.MoveShot.Right] run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/1.main
    execute if entity @s[tag=8T.Skill.Rod.MoveShot.Left] run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/1.main

###########################################################################
## 剣モード

## ふが
