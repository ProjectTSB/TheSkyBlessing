#> asset:sacred_treasure/0702.bright_black_lamp/trigger/05.schedule_tick
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/trigger/04.schedule_loop

# スコア
    scoreboard players add @s JI.Tick 1

# 盲目を解除し暗視を付与
    effect give @a[distance=..15] night_vision 60 0 true
    effect clear @a[distance=..15] blindness

# 範囲攻撃(5段階)
    execute if score @s JI.Tick matches 1 positioned ~ ~0.5 ~ rotated 0 0 run function asset:sacred_treasure/0702.bright_black_lamp/trigger/06.lamp_wave1
    execute if score @s JI.Tick matches 16 positioned ~ ~0.5 ~ rotated 0 0 run function asset:sacred_treasure/0702.bright_black_lamp/trigger/07.lamp_wave2
    execute if score @s JI.Tick matches 31 positioned ~ ~0.5 ~ rotated 0 0 run function asset:sacred_treasure/0702.bright_black_lamp/trigger/08.lamp_wave3
    execute if score @s JI.Tick matches 46 positioned ~ ~0.5 ~ rotated 0 0 run function asset:sacred_treasure/0702.bright_black_lamp/trigger/09.lamp_wave4
    execute if score @s JI.Tick matches 61 positioned ~ ~0.5 ~ rotated 0 0 run function asset:sacred_treasure/0702.bright_black_lamp/trigger/10.lamp_wave5

# スコアとタグリセット
    execute if score @s JI.Tick matches 61.. run tag @s remove JI.Lamp
    execute if score @s JI.Tick matches 61.. run scoreboard players reset @s JI.Tick