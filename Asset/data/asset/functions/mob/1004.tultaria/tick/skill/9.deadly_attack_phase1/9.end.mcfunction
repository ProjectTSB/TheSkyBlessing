#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/9.end
#
# 終了時に実行
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S7.Death

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 諦めが悪いようね。","color":"white"}]

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1015}] add S7.Death

# タグ調整、フェイズ2開始
    scoreboard players add @s RW.Phase 1
    tag @s remove RW.HPless75per
    tag @s remove RW.InAction

# 不要になったマーカーを消す
    kill @e[type=marker,tag=RW.BodyMarker,sort=nearest,limit=1]

# リセット、行動再開
    function asset:mob/1004.tultaria/tick/reset