#> asset:sacred_treasure/0679.kitsunebi_armor/11.kitsunebi_state
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/10.kitsunebi_state_schedule_loop

# スコア増加(状態異常解除までの時間)
    scoreboard players add @s IV.Kitsunebi 1

# 音を一定時間ごとに鳴らす
    scoreboard players add @s IV.SoundLoop 1
    execute if score @s IV.SoundLoop matches 30.. run function asset:sacred_treasure/0679.kitsunebi_armor/13.sound_loop

# 鈍足
    effect give @s slowness 1 0 true

# 演出
    particle flame ~ ~1.3 ~ 0.3 0.4 0.3 0 1 normal @a
    particle soul_fire_flame ~ ~1.3 ~ 0.3 0.4 0.3 0. 1 normal @a

# 3秒ごとの火魔法属性ダメージと演出 unless scoreの方がコマンド数は少ないんですがどうしてもやりづらいのでこの手法です
    scoreboard players add @s IV.DamageTick 1
    execute if score @s IV.DamageTick matches 30.. run function asset:sacred_treasure/0679.kitsunebi_armor/12.kitsunebi_damage

# 狐火状態終了
    execute if score @s IV.Kitsunebi matches 160.. run scoreboard players reset @s IV.Kitsunebi

