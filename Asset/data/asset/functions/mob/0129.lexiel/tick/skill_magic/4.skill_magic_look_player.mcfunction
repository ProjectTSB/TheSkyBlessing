#> asset:mob/0129.lexiel/tick/skill_magic/4.skill_magic_look_player
#
# プレイヤーを見る
#
# @within function asset:mob/0129.lexiel/tick/skill_magic/1.skill_magic

# アマスタにタグを付与
    tag @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3L.ArmorStandThis
# プレイヤーを見る
    tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet
# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] remove 3L.ArmorStandThis
