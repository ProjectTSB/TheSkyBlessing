#> asset:mob/0317.haruclaire/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0317.haruclaire/hurt/1.trigger

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=8T.ModelRoot,sort=nearest,limit=1] add 8T.ModelRoot.Target

# 効果音
    execute if entity @s[tag=!8T.Temp.Counter] run playsound entity.player.hurt hostile @a ~ ~ ~ 1 1

# 武器持ち替え
    execute if entity @s[tag=!8T.Weapon.HasSword] run function asset:mob/0317.haruclaire/hurt/app.1.change_weapon

# カウンター処理
    # 溜め斬り中
        execute if entity @s[tag=8T.Temp.Counter] run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/6.1.start_counter

# 怯み処理
    # 怯み継続
        execute if entity @s[tag=8T.Temp.Damage] if score @s 8T.DamageTimer matches ..119 run function asset:mob/0317.haruclaire/tick/app.general/5.continue_damage_animation
    # 怯み開始
        execute if entity @s[tag=8T.Temp.NotArmor] unless entity @s[tag=8T.Temp.Damage] run function asset:mob/0317.haruclaire/tick/app.general/4.start_damage_animation
    # 一定時間以上殴られ続けたら怯みキャンセル
        execute if entity @s[tag=8T.Temp.Damage] if score @s 8T.DamageTimer matches 120.. run function asset:mob/0317.haruclaire/tick/app.general/6.cancel_damage_animation

# 紐づけ終了
    tag @e[type=item_display,tag=8T.ModelRoot.Target] remove 8T.ModelRoot.Target