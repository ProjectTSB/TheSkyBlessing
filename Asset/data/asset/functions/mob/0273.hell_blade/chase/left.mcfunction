#> asset:mob/0273.hell_blade/chase/left
#
#
#
# @within function asset:mob/0273.hell_blade/chase/check

# タイマー更新
    scoreboard players set @s 7L.Timer -10

# クールタイム
    scoreboard players set @s 7L.RotateTimer 3

# タグ付け
    tag @s add 7L.RotateLeft

# SFX
    execute at @s run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
