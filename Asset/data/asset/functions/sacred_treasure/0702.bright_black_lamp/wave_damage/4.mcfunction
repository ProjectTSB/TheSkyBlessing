#> asset:sacred_treasure/0702.bright_black_lamp/wave_damage/4
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/9.lamp_wave4

# 演出
    particle dust 0 0 0 2 ~ ~1.2 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.3 0.4 0

# ダメージ処理
    data modify storage lib: Argument.Damage set value 30f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    function lib:damage/
    data remove storage lib: Argument
