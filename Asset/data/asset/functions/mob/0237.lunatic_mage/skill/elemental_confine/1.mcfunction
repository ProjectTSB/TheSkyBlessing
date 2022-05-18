#> asset:mob/0237.lunatic_mage/skill/elemental_confine/1
#
# プレイヤーを殺す技
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 頭装備解除
    execute if entity @s[scores={6L.Tick=1}] run item replace entity @s armor.head with minecraft:air

# 演出
    execute if entity @s[scores={6L.Tick=1}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/teleport

# スポーン地点にワープ
    execute if entity @s[scores={6L.Tick=1}] at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run tp @s ~ ~2 ~

# 演出
    execute if entity @s[scores={6L.Tick=1}] at @s run function asset:mob/0237.lunatic_mage/skill/elemental_confine/teleport

# 頭装備再装備
    execute if entity @s[scores={6L.Tick=1}] run item replace entity @s armor.head with stick{CustomModelData:20199}

# NoAIになる
    execute if entity @s[scores={6L.Tick=1}] run data modify entity @s NoAI set value 1b

# ポーズ変更
    execute if entity @s[scores={6L.Tick=20}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 予備動作的な
    execute if entity @s[scores={6L.Tick=22}] at @a[distance=..20] run playsound minecraft:block.portal.travel hostile @a ~ ~ ~ 0.2 2 0
    execute if entity @s[scores={6L.Tick=..40}] run particle dust 1 1 1 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 3 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..40}] run particle dust 1 0.2 0.2 1 ~ ~1 ~ 0.4 0.5 0.4 0.3 1 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..40}] run particle dust 0.376 0.494 0.965 1 ~ ~1 ~ 0.4 0.5 0.4 0.3 1 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..40}] run particle dust 1 1 0.596 1 ~ ~1 ~ 0.4 0.5 0.4 0.3 1 force @a[distance=..20]

# 召喚された地点にランダムなプレイヤー一人と、水の檻範囲内にいたプレイヤーと共にワープ
    #execute if entity @s[scores={6L.Tick=40}] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run tp @r[distance=..100] ~ ~ ~
    #execute if entity @s[scores={6L.Tick=40}] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run tp @a[distance=..9] ~ ~ ~

# アクティブ中に実行するコマンド
    execute if entity @s[scores={6L.Tick=41..450}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/2.in_activation

# 火の予告
    execute if entity @s[scores={6L.Tick=70..84}] positioned ~ ~-1.5 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_confine/4.fire_line

# 火を使い始める
    execute if entity @s[scores={6L.Tick=85..181}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/5.fire

# 雷を落とす
    execute if entity @s[scores={6L.Tick=195..470}] positioned ~ ~-2 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_confine/10.thunder

# 再度火の予告
    execute if entity @s[scores={6L.Tick=250..265}] positioned ~ ~-1.5 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_confine/4.fire_line

# 再度火を使い始める
    execute if entity @s[scores={6L.Tick=265..470}] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/6.fire2

# リセット
    execute if entity @s[scores={6L.Tick=540..}] run function asset:mob/0237.lunatic_mage/tick/5.reset