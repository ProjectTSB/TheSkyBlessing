#> asset:mob/0276.ksitigarbha_body/tick/2.2.ongaeshi
#
# 自分に雪が乗っているか確認して、乗っていなかった場合片割れをキル
#
# @within function asset:mob/0276.ksitigarbha_body/tick/2.tick

#> prv
# @private
    #declare tag 7O.KillTarget
    #declare score_holder $7O.IsSnowCapped


# 自分に雪が乗っているか確認
    execute unless data entity @s ArmorItems[3].Count run scoreboard players set $7O.IsSnowCapped Temporary 1

# 雪が乗っていないならペアを検索してkill
    execute if score $7O.IsSnowCapped Temporary matches 1 as @e[scores={MobID=236},distance=..0.01] if score @s MobUUID = $7O.PairID Temporary run tag @s add 7O.KillTarget
    execute if score $7O.IsSnowCapped Temporary matches 1 run kill @e[tag=7O.KillTarget,distance=..0.01,limit=1]

# reset 
    scoreboard players reset $7O.IsSnowCapped Temporary