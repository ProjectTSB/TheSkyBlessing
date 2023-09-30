#> asset:mob/0327.eclael/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/1.trigger

# 特殊怯み処理
    # 居合斬り
        execute if entity @s[tag=93.Temp.NotArmor,tag=93.Skill.Former.Iai] if score @s 93.DamageIntervalTimer matches ..0 if entity @a[tag=Attacker,distance=..4] run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/6.start_damage_animation

# ダメージインターバル更新
    scoreboard players set @s 93.DamageIntervalTimer 20
