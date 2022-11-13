#> asset:mob/0237.lunatic_mage/skill/fire/1
#
# 火スキルのメイン処理
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 最初に左回転か右回転か決める
    execute if entity @s[scores={6L.Tick=1}] if predicate lib:random_pass_per/50 run tag @s add 6L.LeftRotation

# ポーズ変更
    execute if entity @s[scores={6L.Tick=2}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a[distance=..30] ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 0 0 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 3 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..20}] positioned ~ ~2.4 ~ positioned ^-0.6 ^ ^0.4 run particle flame ~ ~ ~ 0 0 0 0.02 1

# NoAIと向きをセット
    execute if entity @s[scores={6L.Tick=20}] run data modify entity @s NoAI set value 1b
    execute if entity @s[scores={6L.Tick=20}] facing entity @p[gamemode=!spectator,distance=..32] eyes run tp @s ~ ~ ~ ~ ~

# 空中なら降りる
    execute if entity @s[scores={6L.Tick=20..}] if block ~ ~-0.2 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.2 ~

# 実行時間を移す
    execute if entity @s[scores={6L.Tick=20..}] run scoreboard players operation $Interval Temporary = @s 6L.Tick
# 4tickおきに実行
    execute if entity @s[scores={6L.Tick=20..}] run scoreboard players operation $Interval Temporary %= $5 Const
    execute if entity @s[scores={6L.Tick=20..}] if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/fire/2.shoot

# リセット
    scoreboard players reset $Interval Temporary
# リセット
    execute if entity @s[scores={6L.Tick=80..}] run function asset:mob/0237.lunatic_mage/tick/5.reset