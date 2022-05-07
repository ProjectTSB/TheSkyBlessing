#> asset:mob/0237.lunatic_mage/skill/magic/1
#
# 魔法属性ビーム！
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle end_rod ~ ~1.2 ~ 1 0.5 1 0.3 3 normal @a

# NoAIになっておきましょう
    execute if entity @s[scores={6L.Tick=2}] run data modify entity @s NoAI set value 1b

# 最も最寄りのプレイヤーをターゲットとして予告線を出す
    execute if entity @s[scores={6L.Tick=20..45}] positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..50] eyes run function asset:mob/0237.lunatic_mage/skill/magic/2.warning_line

# 向き合わせ
    execute if entity @s[scores={6L.Tick=45}] anchored eyes run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..50] eyes
    execute if entity @s[scores={6L.Tick=70}] anchored eyes run tp @s ~ ~ ~ facing entity @r[gamemode=!spectator,distance=..50] eyes
    execute if entity @s[scores={6L.Tick=95}] anchored eyes run tp @s ~ ~ ~ facing entity @r[gamemode=!spectator,distance=..50] eyes

# 発射！
    execute if entity @s[scores={6L.Tick=50}] positioned ~ ~1.6 ~ run function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam
    execute if entity @s[scores={6L.Tick=75}] positioned ~ ~1.6 ~ run function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam
    execute if entity @s[scores={6L.Tick=100}] positioned ~ ~1.6 ~ run function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam

# リセット
    execute if entity @s[scores={6L.Tick=100..}] run function asset:mob/0237.lunatic_mage/tick/5.reset