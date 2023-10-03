#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.3.move_attack_pos
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

# プレイヤーが歩いていそうな場合
    execute if entity @a[distance=..8] run tag @s add 93.Temp.GeneralTarget
    execute if entity @a[distance=..8] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^8 ~ 0
# プレイヤーが走っていそうな場合
    execute if entity @s[tag=!93.Temp.GeneralTarget] unless entity @a[distance=..7] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^14 ~ 0
