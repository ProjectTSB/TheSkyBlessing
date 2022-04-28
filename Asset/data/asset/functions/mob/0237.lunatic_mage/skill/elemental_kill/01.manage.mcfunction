#> asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage
#
# プレイヤーを殺す技
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle flame ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a
    execute if entity @s[scores={6L.Tick=..20}] run particle splash ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 1 0 1.3 ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a

# NoAIになる
    execute if entity @s[scores={6L.Tick=20}] run data modify entity @s NoAI set value 1b

# プレイヤーの下にワープ
    execute if entity @s[scores={6L.Tick=20}] at @p[gamemode=!spectator,distance=..40] run tp @s ~ ~ ~ ~ 0

# 空中はダメです
    execute if entity @s[scores={6L.Tick=21..}] if block ~ ~-0.2 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.2 ~

# 水の檻
    execute if entity @s[scores={6L.Tick=21..}] run function asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_jail

# 火の予告
    execute if entity @s[scores={6L.Tick=50..53}] positioned ~ ~1.6 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/05.fire_line

# 火を使い始める
    execute if entity @s[scores={6L.Tick=61..}] run function asset:mob/0237.lunatic_mage/skill/elemental_kill/06.fire

# リセット
    execute if entity @s[scores={6L.Tick=201..}] run function asset:mob/0237.lunatic_mage/tick/05.reset