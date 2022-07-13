#> asset:mob/0237.lunatic_mage/skill/elemental_confine/start
#
# 大技開始のながれ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 頭装備解除
    item replace entity @s armor.head with minecraft:air

# 演出
    function asset:mob/0237.lunatic_mage/skill/teleport/vfx

# スポーン地点にワープ
    execute at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run tp @s ~ ~2 ~

# 演出
    execute at @s run function asset:mob/0237.lunatic_mage/skill/teleport/vfx

# NoAIになる
    data modify entity @s NoAI set value 1b