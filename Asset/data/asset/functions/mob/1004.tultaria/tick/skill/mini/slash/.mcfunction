#> asset:mob/1004.tultaria/tick/skill/mini/slash/
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> トゥル側から剣へと付与するタグ
# @private
#declare tag RW.SlashStop

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 最初だけこっちを向く
    execute if score @s RW.Tick matches 0 facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 攻撃時にこっち向く
    #execute if score @s RW.Tick matches 22 facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 前進
    #execute if score @s RW.Tick matches 1..22 run tp @s[tag=!RW.SlashStop] ^ ^ ^1 ~ ~
    execute if score @s[tag=!RW.SlashStop] RW.Tick matches 1..22 facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~
    execute if score @s[tag=!RW.SlashStop] RW.Tick matches 22..25 run tp @s ^ ^ ^0.5
    execute if score @s[tag=!RW.SlashStop] RW.Tick matches 25..28 run tp @s ^ ^ ^0.3
    execute if score @s[tag=!RW.SlashStop] RW.Tick matches 28..32 run tp @s ^ ^ ^0.1

# 眼の前に対象がいたらスコアを固定
    execute if score @s RW.Tick matches 1..22 if entity @p[distance=3..6] positioned ^ ^ ^-100 unless entity @p[distance=..100] run scoreboard players set @s RW.Tick 22

# 開始時点で目の前だったらその場で斬る
    execute if score @s RW.Tick matches 0..5 if entity @p[distance=..3] positioned ^ ^ ^-100 unless entity @p[distance=..100] run tag @s add RW.SlashStop
    execute if score @s RW.Tick matches 0..5 if entity @p[distance=..3] positioned ^ ^ ^-100 unless entity @p[distance=..100] run scoreboard players set @s RW.Tick 22

# 構え
    execute if score @s RW.Tick matches 22 run function asset:mob/1004.tultaria/tick/skill/mini/slash/windup

# 斬撃
    execute if score @s RW.Tick matches 30 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/slash/active

# 射撃
    #execute if score @s RW.Tick matches 5 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot
    #execute if score @s RW.Tick matches 7 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot
    #execute if score @s RW.Tick matches 9 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 60.. run scoreboard players set @s RW.Tick -10

# 前進
    execute if score @s RW.Tick matches 40..43 run tp @s[tag=!RW.SlashStop] ^ ^ ^-0.5
    execute if score @s RW.Tick matches 43..46 run tp @s[tag=!RW.SlashStop] ^ ^ ^-0.3
    execute if score @s RW.Tick matches 46..49 run tp @s[tag=!RW.SlashStop] ^ ^ ^-0.1

# リセット
    execute if score @s RW.Tick matches 50 run tag @s remove RW.SlashStop
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/mini/reset
