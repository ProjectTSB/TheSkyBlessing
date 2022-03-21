#> asset:mob/0276.ksitigarbha_body/tick/2.2.ongaeshi
#
# 自分に雪が乗っているか確認して、乗っていなかった場合片割れをキル
#
# @within function asset:mob/0276.ksitigarbha_body/tick/2.tick

#> prv
# @private
    #declare tag 7O.KillTarget
    #declare score_holder $7O.IsSnowRemoved


# 自分に雪が乗っているか確認
    execute unless score @s 7O.SurcideTime matches -2147483648..2147483647 unless data entity @s ArmorItems[3].Count run scoreboard players set $7O.IsSnowRemoved Temporary 1

# 雪が乗っていないならペアを検索してkill
    execute if score $7O.IsSnowRemoved Temporary matches 1 as @e[scores={MobID=236},distance=..0.2] if score @s MobUUID = $7O.PairID Temporary run tag @s add 7O.KillTarget
    execute if score $7O.IsSnowRemoved Temporary matches 1 run kill @e[tag=7O.KillTarget,distance=..0.2,limit=1]

# 雪が乗っていない場合周囲のプレイヤーにバフをかける
    execute if score $7O.IsSnowRemoved Temporary matches 1 run effect give @a[distance=..5] regeneration 5 1
    execute if score $7O.IsSnowRemoved Temporary matches 1 run tellraw @a[distance=..5] [{"translate": "お地蔵さんは雪を払ってもらった恩返しをした","color": "yellow"}]

# 音
    execute if score $7O.IsSnowRemoved Temporary matches 1 run playsound ogg:random.levelup hostile @a[distance=..5] ~ ~ ~ 2 1.5 1

# 恩返しを実行したフラグをつける
    execute if score $7O.IsSnowRemoved Temporary matches 1 run tag @s add 7O.Ongaeshied

# reset 
    scoreboard players reset $7O.IsSnowRemoved Temporary