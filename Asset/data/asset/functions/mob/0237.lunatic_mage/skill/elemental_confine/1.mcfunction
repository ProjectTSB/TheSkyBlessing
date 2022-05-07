#> asset:mob/0237.lunatic_mage/skill/elemental_confine/1
#
# プレイヤーを殺す技
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 0 0 1.5 ~ ~1.2 ~ 1 0.5 1 0.3 2 normal @a
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 0 0 1 1.5 ~ ~1.2 ~ 1 0.5 1 0 2 normal @a
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 1 0 1.3 ~ ~1.2 ~ 1 0.5 1 0.3 2 normal @a

# NoAIになる
    execute if entity @s[scores={6L.Tick=20}] run data modify entity @s NoAI set value 1b

# 召喚地点にプレイヤー1人とともにワープ
    execute if entity @s[scores={6L.Tick=20}] run tp @s @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1]
    execute if entity @s[scores={6L.Tick=20}] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run tp @r[distance=..100] ~ ~ ~

# 空中の場合降下
    execute if entity @s[scores={6L.Tick=21..}] if block ~ ~-0.2 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.2 ~

# 水の檻
    execute if entity @s[scores={6L.Tick=21..}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/2.water_jail_interval

# 火の予告
    execute if entity @s[scores={6L.Tick=50..53}] positioned ~ ~1.6 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_confine/4.fire_line

# 火を使い始める
    execute if entity @s[scores={6L.Tick=61..157}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/5.fire

# 雷を落とす
    execute if entity @s[scores={6L.Tick=180..}] rotated 0 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/7.thunder

# 再度火の予告
    execute if entity @s[scores={6L.Tick=220..229}] positioned ~ ~1.6 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_confine/4.fire_line

# 再度火を使い始める
    execute if entity @s[scores={6L.Tick=230..400}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire2

# リセット
    execute if entity @s[scores={6L.Tick=400..}] run function asset:mob/0237.lunatic_mage/tick/5.reset