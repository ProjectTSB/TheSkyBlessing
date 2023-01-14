#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.quote
#
# なんか喋りつつ構えを戻す
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S7.Death

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1015}] add S7.Death

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [-45f,0f,-75f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [0f,15f,25f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20071}
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20068}

# 体変える
    execute if entity @s[scores={RW.Phase=..2}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}
    execute if entity @s[scores={RW.Phase=3..}] run item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20081}

# 体の向き
    tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~35 ~

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [10.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~ ~

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 諦めが悪いようね。","color":"white"}]