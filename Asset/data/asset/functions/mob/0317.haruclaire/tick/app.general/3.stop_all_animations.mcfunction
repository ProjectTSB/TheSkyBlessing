#> asset:mob/0317.haruclaire/tick/app.general/3.stop_all_animations
#
# 汎用処理 全てのアニメーション再生停止
#
# @within function asset:mob/0317.haruclaire/tick/app.general/*

# タイマーリセット
    scoreboard players set @s 8T.AnimationTimer -1

# タグ消去
    tag @s remove 8T.Skill.Rod.Start
    tag @s remove 8T.Skill.Rod.Idle
    tag @s remove 8T.Skill.Rod.Attack
    tag @s remove 8T.Skill.Rod.IcePillar
    tag @s remove 8T.Skill.Rod.Laser
    tag @s remove 8T.Skill.Rod.IceBullet
    tag @s remove 8T.Skill.Rod.Shot
    tag @s remove 8T.Skill.Rod.MoveShot.Right
    tag @s remove 8T.Skill.Rod.MoveShot.Left
    tag @s remove 8T.Skill.Rod.Teleport
    tag @s remove 8T.Skill.Rod.ToSword
    tag @s remove 8T.Skill.Sword.Idle
    tag @s remove 8T.Skill.Sword.Damage
    tag @s remove 8T.Skill.Sword.Slash
    tag @s remove 8T.Skill.Sword.Warp
    tag @s remove 8T.Skill.Sword.Laser
    tag @s remove 8T.Skill.Sword.Charge
    tag @s remove 8T.Skill.Sword.IceRain

# animated java再生停止
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/pause_all
