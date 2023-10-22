#> asset:mob/0327.eclael/tick/app.general/3.stop_all_animations
#
# 汎用処理 全てのアニメーション再生停止
#
# @within function asset:mob/0327.eclael/tick/**

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# タグ消去
    tag @s remove 93.Skill.Former.Idle
    tag @s remove 93.Skill.Former.Iai
    tag @s remove 93.Skill.Former.Iai.Damage
    tag @s remove 93.Skill.Former.Slash
    tag @s remove 93.Skill.Former.Shot
    tag @s remove 93.Skill.Former.UpperShot
    tag @s remove 93.Skill.Former.UpperShot.Damage
    tag @s remove 93.Skill.Former.Magic
    tag @s remove 93.Skill.Former.ShortMagic
    tag @s remove 93.Skill.Latter.Start
    tag @s remove 93.Skill.Latter.Idle
    tag @s remove 93.Skill.Latter.Damage
    tag @s remove 93.Skill.Latter.Damage.Move
    tag @s remove 93.Skill.Latter.MoveSlash
    tag @s remove 93.Skill.Latter.Iai
    tag @s remove 93.Skill.Latter.Iai.Damage
    tag @s remove 93.Skill.Latter.Shot
    tag @s remove 93.Skill.Latter.Magic
    tag @s remove 93.Skill.Latter.Pursuit
    tag @s remove 93.Skill.Latter.Move
    tag @s remove 93.Skill.Latter.Move.Back
    tag @s remove 93.Skill.Latter.Spear
    tag @s remove 93.Skill.Latter.Spear.Damage
    tag @s remove 93.Skill.Latter.Whip
    tag @s remove 93.Skill.Latter.Quick
    tag @s remove 93.Skill.Latter.MoveShot
    tag @s remove 93.Skill.Latter.MoveShot.Single
    tag @s remove 93.Skill.Latter.Sorafune
    tag @s remove 93.Skill.Latter.Momiji
    tag @s remove 93.Skill.Latter.SpinSlash
    tag @s remove 93.Skill.Latter.Guard.0
    tag @s remove 93.Skill.Latter.Guard.1
    tag @s remove 93.Skill.Latter.Guard.2

# 分岐用一時タグ消去
    tag @s remove 93.Temp.MoveToLeft

# animated java再生停止
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/pause_all
