#> asset:mob/0327.eclael/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/1.trigger

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Target

# 効果音
    playsound entity.player.hurt hostile @a ~ ~ ~ 1 1
    # execute if entity @s[tag=!93.Temp.Counter] run playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 特殊怯み処理
    # 居眠り
        execute if entity @s[tag=93.Skill.Former.Idle.Sleep,tag=!93.Temp.SleepDamage] run tag @s add 93.Temp.SleepDamage
    # 前半・居合斬り
        execute if entity @s[tag=93.Temp.NotArmor,tag=93.Skill.Former.Iai] if score @s 93.DamageIntervalTimer matches ..0 if entity @a[tag=Attacker,distance=..4] run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/6.start_damage_animation
    # 後半・居合斬り
        execute if entity @s[tag=93.Temp.NotArmor,tag=93.Skill.Latter.Iai] if score @s 93.DamageIntervalTimer matches ..0 if entity @a[tag=Attacker,distance=..4] run function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/6.start_damage_animation

# 怯み処理
    # 怯み継続
        execute if entity @s[tag=93.Temp.Damage] if score @s 93.DamageTimer matches ..119 run function asset:mob/0327.eclael/tick/app.general/5.continue_damage_animation
    # 怯み開始
        execute if entity @s[tag=93.Temp.NotArmor] unless entity @s[tag=93.Temp.Damage] run function asset:mob/0327.eclael/tick/app.general/4.start_damage_animation
    # 一定時間以上殴られ続けたら怯みキャンセル
        execute if entity @s[tag=93.Temp.Damage] if score @s 93.DamageTimer matches 120.. run function asset:mob/0327.eclael/tick/app.general/6.cancel_damage_animation

# ダメージインターバル更新
    scoreboard players set @s 93.DamageIntervalTimer 20

# 紐づけ終了
    tag @e[type=item_display,tag=93.ModelRoot.Target] remove 93.ModelRoot.Target
