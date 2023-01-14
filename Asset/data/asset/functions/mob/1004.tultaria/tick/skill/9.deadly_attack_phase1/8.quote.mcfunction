#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/8.quote
#
# もう一度構えつつ画面を白くする
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 画面エフェクト
    title @a[distance=..50] times 5 20 10
    title @a[distance=..50] title {"text":"\uE010","font":"screen_effect","color":"#FFFFFF"}
    title @a[distance=..50] subtitle {"text":""}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [20.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20087}

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> それなら…","color":"white"}]