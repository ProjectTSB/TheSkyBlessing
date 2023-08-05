#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.4.attack_damage
#
# アニメーションのイベントハンドラ 杖モード・レーザー 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.1.attack

# ターゲット取得
    execute positioned ^ ^ ^2 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^4 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^6 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^8 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^10 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^12 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^14 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^16 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^18 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^20 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^22 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^24 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^26 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^28 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target
    execute positioned ^ ^ ^30 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.5.attack_damage_target

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 30f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    execute as @a[tag=8T.Temp.AttackTarget] run function lib:damage/
    tag @a[tag=8T.Temp.AttackTarget] remove 8T.Temp.AttackTarget

# リセット
    function lib:damage/reset
