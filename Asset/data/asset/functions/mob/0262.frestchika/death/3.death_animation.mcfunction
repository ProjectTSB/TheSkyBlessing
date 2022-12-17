#> asset:mob/0262.frestchika/death/3.death_animation
#
#
#
# @within function asset:mob/0262.frestchika/death/schedule


# スコアを増やしていく
    scoreboard players add @s 7A.Tick 1

# 以下アニメーション

# 地面につくまで落下する
    execute if block ~ ~-0.1 ~ #lib:air run tp ~ ~-0.25 ~
# 埋まった場合上に上がる
    execute unless block ~ ~ ~ #lib:air run tp ~ ~0.2 ~

# 文字いっぱいだす
    execute if score @s 7A.Tick matches 1..50 run function asset:mob/0262.frestchika/death/text_summon

# オーバーヒート化する
    execute if score @s 7A.Tick matches 10 run item replace entity @s weapon.mainhand with stick{CustomModelData:20153}
    execute if score @s 7A.Tick matches 10 run item replace entity @s weapon.offhand with stick{CustomModelData:20152}
    execute if score @s 7A.Tick matches 10 run item replace entity @s armor.head with stick{CustomModelData:20154}

# ぶっ倒れる
    execute if score @s 7A.Tick matches 40 run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0
    execute if score @s 7A.Tick matches 40 run item replace entity @s weapon.mainhand with air
    execute if score @s 7A.Tick matches 40 run item replace entity @s weapon.offhand with air
    execute if score @s 7A.Tick matches 40 run item replace entity @s armor.head with stick{CustomModelData:20155}

# 演出
    execute if score @s 7A.Tick matches 40.. run particle smoke ^ ^ ^1 0.3 0.3 0.3 0 5
    execute if score @s 7A.Tick matches 40.. if predicate lib:random_pass_per/10 run particle lava ^ ^ ^1 0.3 0.3 0.3 0 5

# うめき声
    execute if score @s 7A.Tick matches 70 run playsound minecraft:entity.strider.ambient hostile @a ~ ~ ~ 1 0.8

# 爆発
    execute if score @s 7A.Tick matches 160 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s 7A.Tick matches 160 run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

    execute if score @s 7A.Tick matches 160 run kill @s