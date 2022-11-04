#> asset:mob/0022.red_knight/tick/wait_time/base_move/jump
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# 向き固定
    tag @s add M.FacingLock

# 体モデル変更
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20280}

# 体の向き
    execute as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# ジャンプ
    data modify entity @s Motion[1] set value 0.8d

# 演出
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 1.5