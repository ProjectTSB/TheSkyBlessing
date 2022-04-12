#> asset:mob/0156.infringement/tick/3.alert
#
#
#
# @within function asset:mob/0156.infringement/tick/2.tick

# タグ付け
    tag @s add 4C.Alert

# 演出
    playsound entity.creeper.primed hostile @a
    item replace entity @s armor.head with budding_amethyst 1
    item replace entity @s armor.chest with leather_chestplate{display:{color:10376447}} 1
    item replace entity @s armor.legs with leather_leggings{display:{color:8075474}} 1
    item replace entity @s armor.feet with leather_boots{display:{color:4919448}} 1

# 発光
    effect give @s glowing 9999 1 true