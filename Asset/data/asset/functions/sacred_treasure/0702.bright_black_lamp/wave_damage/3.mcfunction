#> asset:sacred_treasure/0702.bright_black_lamp/wave_damage/3
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/8.lamp_wave3

# 演出
    particle dust 0 0 0 2 ~ ~1.2 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.3 0.4 0

# ダメージ処理
    data modify storage lib: Argument.Damage set value 25f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    function lib:damage/
    data remove storage lib: Argument
