#> asset:sacred_treasure/0985.noname/trigger/sword/sword_summon
#
#
#
# @within function asset:sacred_treasure/0985.noname/trigger/skill_list/skill_?/*

# 斬撃
    summon armor_stand ^ ^ ^-1 {Tags:["RD.Sword","RD.SwordInit","Object"],NoGravity:1b,Invisible:1b,Pose:{Head:[0.1f,0.0f,0.1f]},DisabledSlots:4144959}

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2


# tp
    tp @e[type=armor_stand,tag=RD.SwordInit,distance=..10,sort=nearest,limit=1] @s

# 向き
    data modify entity @e[type=armor_stand,tag=RD.SwordInit,distance=..10,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[1]

    tag @e[type=armor_stand,tag=RD.SwordInit,distance=..10,sort=nearest,limit=1] remove RD.SwordInit


# アニメーション開始
    schedule function asset:sacred_treasure/0985.noname/trigger/sword/schedule 1t