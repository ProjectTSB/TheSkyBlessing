#> asset:sacred_treasure/0079.shoot_down_a_flying_dragon/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0079.shoot_down_a_flying_dragon/2.check_condition
#declare tag Hit
#declare score_holder $Weather

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

    #下準備
    execute if predicate lib:weather/is_sunny run scoreboard players set $Weather Temporary 0
    execute if predicate lib:weather/is_raining run scoreboard players set $Weather Temporary 1
    execute if predicate lib:weather/is_thundering run scoreboard players set $Weather Temporary 2

    # 対象を設定
    # 下準備として頭上のブロック数取得
    execute store result score @s Temporary if blocks ~ ~ ~ ~ 255 ~ ~ ~ ~ masked
    tag @e[type=!minecraft:player,distance=..10,sort=nearest,limit=1] add Hit
    execute if score @s Temporary matches ..0 unless predicate lib:weather/is_sunny run tag @e[type=!minecraft:player,distance=..10] add Hit
        # 自身が水の近くにいた場合付近にも水がある敵(distance=..10)も対象となる
        execute store result score @s Temporary run clone ~-1 ~ ~-1 ~1 ~ ~1 ~-1 ~ ~-1 filtered water force
        execute if score @s Temporary matches 1.. as @e[type=!minecraft:player,distance=..10] at @s store result score @s Temporary run clone ~-1 ~ ~-1 ~1 ~ ~1 ~-1 ~ ~-1 filtered water force
        execute if score @s Temporary matches 1.. as @e[type=!minecraft:player,distance=..10] if score @s Temporary matches 1.. run tag @s add Hit

    # ダメージを設定
    data modify storage lib: Argument.Damage set value 30.0f
    execute if score $Weather Temporary matches 1 run data modify storage lib: Argument.Damage set value 40.0f
    execute if score $Weather Temporary matches 2 run data modify storage lib: Argument.Damage set value 50.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    data modify storage lib: Argument.BypassArmor set value 0b
    data modify storage lib: Argument.BypassResist set value 0b

    # 演出
    # 共通particle +
    execute as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run particle enchanted_hit ~ ~2 ~ 0.02 5 0.02 0 75 force @a
    execute if score $Weather Temporary matches 0 as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run particle dust 0.941 1 0.11 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a
    execute if score $Weather Temporary matches 1 as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run particle dust 1 0.69 0.11 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a
    execute if score $Weather Temporary matches 2 as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run particle dust 1 0.176 0.176 0.5 ~ ~2 ~ 0.02 5 0.02 0 150 force @a

    execute as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10000 2
    execute as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10000 2
    execute as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10000 2


    # 効果
    # 誤Hit用処理 HitしたMobの0.05m以内にいると自分にもあたる ※現在はコメントアウト中
    # execute as @e[type=!minecraft:player,tag=Hit,distance=..10] at @s as @e[tag=!Hit,distance=..0.05] run function lib:damage/
    # 通常Hit処理
    execute as @e[type=!minecraft:player,tag=Hit,distance=..10] run function lib:damage/
    effect clear @e[type=!minecraft:player,distance=..10,limit=1] levitation

    # リセット
    tag @e[type=!minecraft:player,tag=Hit,distance=..10] remove Hit
    scoreboard players reset @e[distance=..10] Temporary
    scoreboard players reset $Weather Temporary
    data remove storage lib: Argument