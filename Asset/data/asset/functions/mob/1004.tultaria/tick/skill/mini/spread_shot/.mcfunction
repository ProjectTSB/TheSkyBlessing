#> asset:mob/1004.tultaria/tick/skill/mini/spread_shot/
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0..22 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 射撃
    execute if score @s RW.Tick matches 10 positioned ~ ~1.5 ~ facing entity @p eyes run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 30.. run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/mini/reset