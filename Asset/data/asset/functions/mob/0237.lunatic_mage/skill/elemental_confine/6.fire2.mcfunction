#> asset:mob/0237.lunatic_mage/skill/elemental_confine/6.fire2
#
# 回転しながら炎弾連射 (2回目)
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick

# 6tickおきに実行
    scoreboard players operation $Interval Temporary %= $6 Const
    execute positioned ~ ~-3 ~ if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/7.fire_shoot

# 発射位置にパーティクル
    execute positioned ~ ~-2.4 ~ run particle minecraft:dust 100000000 1 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 5 force @a[distance=..20]
    execute positioned ~ ~-2.4 ~ run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.02 1 force @a[distance=..20]

# 回転
    execute if score $Interval Temporary matches 0 run tp @s ~ ~ ~ ~-15 ~

# リセット
    scoreboard players reset $Interval Temporary