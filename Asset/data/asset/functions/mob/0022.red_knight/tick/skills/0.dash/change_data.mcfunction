#> asset:mob/0022.red_knight/tick/skills/0.dash/change_data
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/0.dash/1.tick

# 浮遊する
    data modify entity @s NoGravity set value 1b

# ポーズ変更
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20277}
