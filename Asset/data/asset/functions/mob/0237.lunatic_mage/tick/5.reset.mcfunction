#> asset:mob/0237.lunatic_mage/tick/5.reset
#
# リセットします
#
# @within function asset:mob/0237.lunatic_mage/skill/*/1

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players set @s 6L.Tick -60
    tag @s remove 6L.Fire
    tag @s remove 6L.Water
    tag @s remove 6L.Thunder
    tag @s remove 6L.Magic
    tag @s remove 6L.Fire2
    tag @s remove 6L.ElementalConfine
    tag @s remove 6L.LeftRotation
    tag @s remove 6L.SkillSecond

# ポーズもリセット
    item replace entity @s armor.head with stick{CustomModelData:20198}

# ノーマル以下なら、本気ワープのスコア
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[tag=6L.HealthLess40Per] run scoreboard players add @s 6L.TeleportCount 1

# ノーマル以下ならワープ
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={6L.TeleportCount=2..}] run function asset:mob/0237.lunatic_mage/skill/teleport/main

# ハード以上なら確率ワープ
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/50 run function asset:mob/0237.lunatic_mage/skill/teleport/main