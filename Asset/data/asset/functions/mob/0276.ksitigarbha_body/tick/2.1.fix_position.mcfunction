#> asset:mob/0276.ksitigarbha_body/tick/2.1.fix_position
#
# ペアのお地蔵さん本体がいない場合いる場所にTP
#
# @within function asset:mob/0276.ksitigarbha_body/tick/2.tick

#> prv
# @private
    #declare tag 7O.ExistPair
    #declare tag 7O.TpTarget
    #declare score_holder $7O.SurcideTime

# ペアが同座標にいるか確認
    execute unless score @s 7O.SurcideTime matches -2147483648..2147483647 as @e[scores={MobID=236},distance=..0.2] if score @s MobUUID = $7O.PairID Temporary run tag @e[tag=this,distance=..0.2] add 7O.ExistPair

# いなかった場合ペアを検索してTP
    execute unless score @s 7O.SurcideTime matches -2147483648..2147483647 unless entity @s[tag=7O.ExistPair] as @e[scores={MobID=236},distance=0.01..] if score @s MobUUID = $7O.PairID Temporary run tag @s add 7O.TpTarget
    execute unless score @s 7O.SurcideTime matches -2147483648..2147483647 unless entity @s[tag=7O.ExistPair] at @e[tag=7O.TpTarget,limit=1] run tp @s ~ ~0.15 ~

# ペアがいない場合自分自身に自殺時間をつける
    execute unless score @s 7O.SurcideTime matches -2147483648..2147483647 at @s unless entity @s[tag=7O.ExistPair] unless entity @e[tag=7O.TpTarget,distance=..0.2,limit=1] store result score $7O.SurcideTime Temporary run time query gametime
    execute if score $7O.SurcideTime Temporary matches -2147483648..2147483647 run scoreboard players add $7O.SurcideTime Temporary 20
    execute if score $7O.SurcideTime Temporary matches -2147483648..2147483647 run scoreboard players operation @s 7O.SurcideTime = $7O.SurcideTime Temporary

# タグリセット
    tag @s[tag=7O.ExistPair] remove 7O.ExistPair
    execute as @s run tag @e[tag=7O.TpTarget,distance=..0.2] remove 7O.TpTarget
    execute if score $7O.SurcideTime Temporary matches -2147483648..2147483647 run scoreboard players reset $7O.SurcideTime Temporary