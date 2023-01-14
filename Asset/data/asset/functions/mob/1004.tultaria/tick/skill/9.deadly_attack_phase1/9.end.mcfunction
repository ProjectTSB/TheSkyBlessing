#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/9.end
#
# 終了時に実行
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick


# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 少しだけ、本気で相手してあげる。","color":"white"}]

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# タグ調整、フェイズ2開始
    scoreboard players add @s RW.Phase 1
    tag @s remove RW.SkillDeadly1
    tag @s remove RW.InAction

# 不要になったマーカーを消す
    kill @e[type=marker,tag=RW.BodyMarker,sort=nearest,limit=1]

# リセット、行動再開
    function asset:mob/1004.tultaria/tick/reset