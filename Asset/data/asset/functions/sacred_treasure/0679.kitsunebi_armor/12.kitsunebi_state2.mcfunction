#> asset:sacred_treasure/0679.kitsunebi_armor/12.kitsunebi_state2
#
#
#
# @within function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop

# スコア減少(状態異常解除までの時間)
    scoreboard players remove @s IV.Kitsunebi2 1

# 音を一定時間ごとに鳴らす
    scoreboard players add @s IV.SoundLoop 1
    execute if score @s IV.SoundLoop matches 30.. run function asset:sacred_treasure/0679.kitsunebi_armor/14.sound_loop

# 鈍足
    effect give @s slowness 1 1 true

# 演出
    particle soul_fire_flame ~ ~1.3 ~ 0.3 0.4 0.3 0 2 normal @a

# 火魔法属性ダメージ
    execute unless score @s IV.Kitsunebi2 matches 1..9 unless score @s IV.Kitsunebi2 matches 11..39 unless score @s IV.Kitsunebi2 matches 41..69 unless score @s IV.Kitsunebi2 matches 71..99 run function asset:sacred_treasure/0679.kitsunebi_armor/13.spread_kitsunebi_damage