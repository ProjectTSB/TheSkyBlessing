#> asset:mob/0237.lunatic_mage/skill/fire/01.manage
#
# 火スキルを管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

# 最初に左回転か右回転か決める
    execute if score @s 6J.Tick matches 1 run function asset:mob/0237.lunatic_mage/skill/fire/02.decide_rotation

# 予備動作的な
    execute if score @s 6J.Tick matches 2 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if score @s 6J.Tick matches ..20 run particle dust 1 0 0 1.5 ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a

# NoAIと向きをセット
    execute if score @s 6J.Tick matches 20 run data modify entity @s NoAI set value 1b
    execute if score @s 6J.Tick matches 20 facing entity @p[gamemode=!spectator,distance=..32] eyes run tp @s ~ ~ ~ ~ ~

# 空中はダメです
    execute if score @s 6J.Tick matches 20.. if block ~ ~-0.2 ~ #lib:no_collision_without_fluid run tp @s ~ ~-0.2 ~

# Intervalスコア
# 実行時間を移す
    execute if score @s 6J.Tick matches 20.. run scoreboard players operation $Interval Temporary = @s 6J.Tick
# 4tickおきに実行
    execute if score @s 6J.Tick matches 20.. run scoreboard players operation $Interval Temporary %= $5 Const
    execute if score @s 6J.Tick matches 20.. if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/fire/03.shoot

# リセット
    scoreboard players reset $Interval
# リセット
    execute if score @s 6J.Tick matches 80.. run function asset:mob/0237.lunatic_mage/tick/05.reset