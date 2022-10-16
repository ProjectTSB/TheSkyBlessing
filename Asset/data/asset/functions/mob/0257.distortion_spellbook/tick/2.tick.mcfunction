#> asset:mob/0257.distortion_spellbook/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0257.distortion_spellbook/tick/1.trigger



# だいたいデーモンアイからコピー。幾何学つかって多少簡略化
# パーティクル
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動
    execute facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# スコア増やす
    scoreboard players add @s 75.CoolTime 1
# プレイヤーが周囲にいてスコア達したら実行
    execute if score @s 75.CoolTime matches 135.. if entity @p[gamemode=!spectator,distance=..20] run function asset:mob/0257.distortion_spellbook/tick/3.teleporter_set
# プレイヤーが周囲にいない状態でスコア達したらスコア戻す
    execute if score @s 75.CoolTime matches 135.. unless entity @p[gamemode=!spectator,distance=..20] run scoreboard players set @s 75.CoolTime 0

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45