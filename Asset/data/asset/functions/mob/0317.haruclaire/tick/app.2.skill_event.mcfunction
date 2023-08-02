#> asset:mob/0317.haruclaire/tick/app.2.skill_event
#
# 付与されているスキルタグに応じて処理を振り分ける
#
# @within function asset:mob/0317.haruclaire/tick/2.tick

###########################################################################
## 汎用

## 登場演出
    execute if entity @s[tag=8T.Skill.Rod.Start] run function asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/1.main

## 武器持ち替え
    execute if entity @s[tag=8T.Skill.Rod.ToSword] run function asset:mob/0317.haruclaire/tick/app.skill_events/09_rod_to_sword/1.main

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

## あられ
    execute if entity @s[tag=8T.Skill.Rod.IceBullet] run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/1.main

## 射撃
    execute if entity @s[tag=8T.Skill.Rod.Shot] run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/1.main

## 移動射撃
    execute if entity @s[tag=8T.Skill.Rod.MoveShot.Right] run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/1.main
    execute if entity @s[tag=8T.Skill.Rod.MoveShot.Left] run function asset:mob/0317.haruclaire/tick/app.skill_events/07_02_rod_moveshot_left/1.main

## テレポート
    execute if entity @s[tag=8T.Skill.Rod.Teleport] run function asset:mob/0317.haruclaire/tick/app.skill_events/08_rod_teleport/1.main

###########################################################################
## 剣モード

## 待機
    execute if entity @s[tag=8T.Skill.Sword.Idle] run function asset:mob/0317.haruclaire/tick/app.skill_events/10_sword_idle/1.main

## 怯み
    execute if entity @s[tag=8T.Skill.Sword.Damage] run function asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/1.main

## 斬撃コンボ
    execute if entity @s[tag=8T.Skill.Sword.Slash] run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/1.main

## ワープ斬りコンボ
    execute if entity @s[tag=8T.Skill.Sword.Warp] run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/1.main

## レーザー斬りコンボ
    execute if entity @s[tag=8T.Skill.Sword.Laser] run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

## 溜め斬りコンボ
    execute if entity @s[tag=8T.Skill.Sword.Charge] run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

## ひさめコンボ
    execute if entity @s[tag=8T.Skill.Sword.IceRain] run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main
