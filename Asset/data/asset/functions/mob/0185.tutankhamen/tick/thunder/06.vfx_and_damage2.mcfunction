#> asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/05.vfx_and_damage1

# 演出
    particle dust 0.38 0 0.6 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 0.404 0.443 1 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# マナ減少
    scoreboard players set $Fluctuation Lib -12
    execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] run function lib:mp/fluctuation

# 自害
    kill @s