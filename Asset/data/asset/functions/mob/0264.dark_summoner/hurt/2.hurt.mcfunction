#> asset:mob/0264.dark_summoner/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0264.dark_summoner/hurt/1.trigger

# サウンド
    playsound minecraft:entity.donkey.hurt hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 1 0.5
