#> asset:mob/0022.red_knight/tick/skill_sword/3.skill_sword_teleport
#
#
#
# @within function asset:mob/0022.red_knight/tick/skill_sword/1.skill_sword

# テレポート
# アマスタにタグを付与
    tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# 前進
    tp ^ ^ ^4
# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis