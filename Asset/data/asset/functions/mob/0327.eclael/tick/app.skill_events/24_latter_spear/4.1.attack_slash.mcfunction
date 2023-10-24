#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/4.1.attack_slash
#
# アニメーションのイベントハンドラ 後半・突き
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.8
    execute positioned ^ ^0.5 ^4 rotated ~90 ~0 run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/4.2.particle_slash

# ターゲット取得
    execute positioned ^ ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 60f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    # ある程度高く飛んでいるプレイヤーにはダメージを与えない
        execute as @a[tag=93.Temp.AttackTarget] at @s unless block ~ ~-2.1 ~ #lib:no_collision_without_fluid if block ~ ~-1.1 ~ #lib:no_collision_without_fluid run tag @s add 93.Temp.ScheduleTargetPlayer
    execute if entity @a[tag=93.Temp.AttackTarget,tag=!93.Temp.ScheduleTargetPlayer] run tag @s add 93.Temp.AttackHit
    execute as @a[tag=93.Temp.AttackTarget,tag=!93.Temp.ScheduleTargetPlayer] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a remove 93.Temp.AttackTarget

# ジャンプして回避したプレイヤーがいる場合，着地検知用のscheduleを実行
    execute if entity @a[tag=93.Temp.ScheduleTargetPlayer] run schedule function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/5.1.schedule 1t replace
