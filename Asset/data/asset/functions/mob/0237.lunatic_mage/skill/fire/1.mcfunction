#> asset:mob/0237.lunatic_mage/skill/fire/1
#
# 火スキルを管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 最初に左回転か右回転か決める
    execute if entity @s[scores={6L.Tick=1}] run function asset:mob/0237.lunatic_mage/skill/fire/2.decide_rotation

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 0 0 1.5 ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a

# NoAIと向きをセット
    execute if entity @s[scores={6L.Tick=20}] run data modify entity @s NoAI set value 1b
    execute if entity @s[scores={6L.Tick=20}] facing entity @p[gamemode=!spectator,distance=..32] eyes run tp @s ~ ~ ~ ~ ~

# 空中なら降りる
    execute if entity @s[scores={6L.Tick=20..}] if block ~ ~-0.2 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.2 ~

# 実行時間を移す
    execute if entity @s[scores={6L.Tick=20..}] run scoreboard players operation $Temp Temporary = @s 6L.Tick
# 4tickおきに実行
    execute if entity @s[scores={6L.Tick=20..}] run scoreboard players operation $Temp Temporary %= $5 Const
    execute if entity @s[scores={6L.Tick=20..}] if score $Temp Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/fire/3.shoot

# リセット
    scoreboard players reset $Temp Temporary
# リセット
    execute if entity @s[scores={6L.Tick=80..}] run function asset:mob/0237.lunatic_mage/tick/5.reset