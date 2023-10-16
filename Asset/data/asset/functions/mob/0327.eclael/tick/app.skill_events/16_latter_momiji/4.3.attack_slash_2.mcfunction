#> asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.3.attack_slash_2
#
# アニメーションのイベントハンドラ 後半・宙船
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute positioned ~ ~1.5 ~ rotated ~-140 ~-25 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/5.1.particle_slash_0
    execute positioned ~ ~1.5 ~ rotated ~ ~15 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/5.2.particle_slash_1
    execute positioned ~ ~1.5 ~ rotated ~-150 ~-25 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/5.3.particle_slash_2

# ターゲット取得
    execute positioned ^-4 ^-2 ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 93.Temp.AttackTarget
    execute positioned ^-2 ^-2 ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 93.Temp.AttackTarget
    execute positioned ^ ^-2 ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 93.Temp.AttackTarget
    execute positioned ^2 ^-2 ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 93.Temp.AttackTarget
    execute positioned ^4 ^-2 ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 93.Temp.AttackTarget
    execute positioned ^-4 ^-2 ^11 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^-2 ^-2 ^11 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^ ^-2 ^11 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^2 ^-2 ^11 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^4 ^-2 ^11 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 42f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function lib:damage/
# ハードの場合，MP減少
    execute if predicate api:global_vars/difficulty/min/hard as @a[tag=93.Temp.AttackTarget] run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/6.1.player_debuff
# リセット
    function lib:damage/reset
    tag @a remove 93.Temp.AttackTarget