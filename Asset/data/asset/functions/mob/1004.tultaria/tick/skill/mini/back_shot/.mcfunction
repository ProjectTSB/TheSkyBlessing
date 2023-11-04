#> asset:mob/1004.tultaria/tick/skill/mini/back_shot/
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active


# ミニスラッシュのカウントをリセット
    execute if score @s RW.Tick matches 0 run scoreboard players reset @s RW.MiniSlashCount

# モデルをプレイヤーに向ける
    #execute if score @s RW.Tick matches 0..22 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 最初だけこっちを向く
    #execute if score @s RW.Tick matches 0 facing entity @p feet run tp @s ~ ~ ~ ~ ~

    execute if score @s RW.Tick matches 1..10 run tp @s ^ ^ ^-1 ~ ~
    execute if score @s RW.Tick matches 13 run tp @s ^ ^ ^-0.8
    execute if score @s RW.Tick matches 12..15 run tp @s ^ ^ ^-0.5
    execute if score @s RW.Tick matches 15..18 run tp @s ^ ^ ^-0.3
    execute if score @s RW.Tick matches 18..22 run tp @s ^ ^ ^-0.1

# 射撃
    execute if score @s RW.Tick matches 5 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/back_shot/shoot
    execute if score @s RW.Tick matches 7 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/back_shot/shoot
    execute if score @s RW.Tick matches 9 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/back_shot/shoot

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 30.. run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/mini/reset