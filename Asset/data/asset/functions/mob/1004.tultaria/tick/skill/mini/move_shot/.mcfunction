#> asset:mob/1004.tultaria/tick/skill/mini/move_shot/
#
# Tick処理
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルをプレイヤーに向ける
    execute if score @s RW.Tick matches 0..22 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 左
    execute if score @s[tag=RW.Skill.Mini.MoveShotLeft] RW.Tick matches 1..10 facing entity @p feet run tp @s ^1 ^ ^ ~ ~
    execute if score @s[tag=RW.Skill.Mini.MoveShotLeft] RW.Tick matches 13 facing entity @p feet run tp @s ^0.8 ^ ^
    execute if score @s[tag=RW.Skill.Mini.MoveShotLeft] RW.Tick matches 12..15 facing entity @p feet run tp @s ^0.5 ^ ^
    execute if score @s[tag=RW.Skill.Mini.MoveShotLeft] RW.Tick matches 15..18 facing entity @p feet run tp @s ^0.3 ^ ^
    execute if score @s[tag=RW.Skill.Mini.MoveShotLeft] RW.Tick matches 18..22 facing entity @p feet run tp @s ^0.1 ^ ^
# 右
    execute if score @s[tag=RW.Skill.Mini.MoveShotRight] RW.Tick matches 1..10 facing entity @p feet run tp @s ^-1 ^ ^ ~ ~
    execute if score @s[tag=RW.Skill.Mini.MoveShotRight] RW.Tick matches 13 facing entity @p feet run tp @s ^-0.8 ^ ^
    execute if score @s[tag=RW.Skill.Mini.MoveShotRight] RW.Tick matches 12..15 facing entity @p feet run tp @s ^-0.5 ^ ^
    execute if score @s[tag=RW.Skill.Mini.MoveShotRight] RW.Tick matches 15..18 facing entity @p feet run tp @s ^-0.3 ^ ^
    execute if score @s[tag=RW.Skill.Mini.MoveShotRight] RW.Tick matches 18..22 facing entity @p feet run tp @s ^-0.1 ^ ^

# 射撃
    execute if score @s RW.Tick matches 5 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot
    execute if score @s RW.Tick matches 7 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot
    execute if score @s RW.Tick matches 9 facing entity @p feet positioned ~ ~1.5 ~ run function asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 30.. run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/mini/reset