#> asset:mob/0236.ksitigarbha/death/2.2.head_drop
#
# 首落ちモデルに変更し、頭の雪を消す
#
# @within function asset:mob/0236.ksitigarbha/death/2.death

# 首落ちモデルに変更し、頭の雪を消す
    data modify entity @s HandItems[0].tag.CustomModelData set value 20181
    item replace entity @s armor.head with air
