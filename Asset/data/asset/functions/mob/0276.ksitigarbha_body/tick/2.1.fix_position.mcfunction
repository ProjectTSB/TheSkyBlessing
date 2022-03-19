#> asset:mob/0276.ksitigarbha_body/tick/2.1.fix_position
#
# ペアのお地蔵さん本体がいない場合いる場所にTP
#
# @within function asset:mob/0276.ksitigarbha_body/tick/2.tick

#> prv
# @private
    #declare tag 7O.ExistPair
    #declare tag 7O.TpTarget

# ペアが同座標にいるか確認
    execute as @e[scores={MobID=236},distance=..0.01] if score @s MobUUID = $7O.PairID Temporary run tag @e[tag=this,distance=..0.01] add 7O.ExistPair

# いなかった場合ペアを検索してTP
    execute unless entity @s[tag=7O.ExistPair] as @e[scores={MobID=236},distance=0.01..] if score @s MobUUID = $7O.PairID Temporary run tag @s add 7O.TpTarget
    execute unless entity @s[tag=7O.ExistPair] run tp @s @e[tag=7O.TpTarget,limit=1]

# ペアがいない場合自分自身をkill
    execute at @s unless entity @s[tag=7O.ExistPair] unless entity @e[tag=7O.TpTarget,distance=..0.01,limit=1] run kill @s

# タグリセット
    tag @s[tag=7O.ExistPair] remove 7O.ExistPair
    execute as @s run tag @e[tag=7O.TpTarget,distance=..0.01] remove 7O.ExistPair