#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.3.attack_thunder_2
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 2段目攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.attack_thunder_main

# 演出
    particle flash ~ ~0.5 ~ 0 0 0 0 1

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $8 Const

    execute if score $Random Temporary matches 0 rotated ~ 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.1.particle_blue_0
    execute if score $Random Temporary matches 1 rotated ~90 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.1.particle_blue_0
    execute if score $Random Temporary matches 2 rotated ~180 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.1.particle_blue_0
    execute if score $Random Temporary matches 3 rotated ~270 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.1.particle_blue_0
    execute if score $Random Temporary matches 4 rotated ~45 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.2.particle_blue_1
    execute if score $Random Temporary matches 5 rotated ~135 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.2.particle_blue_1
    execute if score $Random Temporary matches 6 rotated ~225 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.2.particle_blue_1
    execute if score $Random Temporary matches 7 rotated ~315 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.2.particle_blue_1

# リセット
    scoreboard players reset $Random Temporary

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 35f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset
