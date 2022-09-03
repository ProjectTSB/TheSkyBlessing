#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/8.end
#
# 終了時に実行
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S7.Death

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1015}] add S7.Death

# 不要になったマーカーを消す
    kill @e[type=marker,tag=RW.BodyMarker,sort=nearest,limit=1]

# スコアリセット
    scoreboard players reset $ShotInterval Temporary
    scoreboard players reset $AreaInterval Temporary