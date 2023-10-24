#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.1.attack_slash_0
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 1段目攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.9
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^6 rotated ~70 ~40 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0
    execute positioned ^ ^1 ^6 rotated ~90 ~40 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0

# ターゲット取得
    execute positioned ^ ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^7 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 40f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function lib:damage/
# リセット
    function lib:damage/reset

# ヒットした対象を向く
    execute facing entity @a[tag=93.Temp.AttackTarget,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    tag @a remove 93.Temp.AttackTarget