#> asset:mob/0237.lunatic_mage/skill/water/01.manage
#
# 水魔法を管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

# 予備動作的な
    execute if score @s 6J.SkillTick matches 1 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.8 2 0
    execute if score @s 6J.SkillTick matches ..20 run particle splash ~ ~1.2 ~ 1 0.5 1 0 6 normal @a

# NoAIになる
    execute if score @s 6J.SkillTick matches 20 run data modify entity @s NoAI set value 1b
    execute if score @s 6J.SkillTick matches 20 run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..32]

# 魔法召喚
    execute if score @s 6J.SkillTick matches 21 rotated ~ 0 positioned ^ ^0.5 ^3 run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if score @s 6J.SkillTick matches 25 rotated ~ 0 positioned ^ ^0.5 ^6 run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if score @s 6J.SkillTick matches 29 rotated ~ 0 positioned ^ ^0.5 ^9 run function asset:mob/0237.lunatic_mage/magic_summon/water

# リセット
    execute if score @s 6J.SkillTick matches 31.. run data modify entity @s NoAI set value 0b
    execute if score @s 6J.SkillTick matches 31.. run scoreboard players reset @s 6J.Tick
    execute if score @s 6J.SkillTick matches 31.. run scoreboard players reset @s 6J.SkillTick
