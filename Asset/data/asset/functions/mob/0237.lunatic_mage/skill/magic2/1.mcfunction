#> asset:mob/0237.lunatic_mage/skill/magic2/1
#
# 無スキル2のメイン処理部
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# ポーズ変更
    execute if entity @s[scores={6L.Tick=2}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a[distance=..30] ~ ~ ~ 0.4 2 0.4
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 1 1 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 2 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..20}] positioned ~ ~1.21 ~ positioned ^-0.5 ^ ^1.3 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 1

# 5tick間隔で魔法のProjectileを召喚する
    execute if entity @s[scores={6L.Tick=20..}] run scoreboard players operation $Interval Temporary = @s 6L.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run function asset:mob/0237.lunatic_mage/skill/magic2/2.spread
    execute if score $Interval Temporary matches 0 at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run function asset:mob/0237.lunatic_mage/skill/magic2/2.spread

# リセット
    execute if entity @s[scores={6L.Tick=60..}] run function asset:mob/0237.lunatic_mage/tick/5.reset
    scoreboard players reset $Interval Temporary