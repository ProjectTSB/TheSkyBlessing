#> asset:mob/0324.slash_entity/tick/start_animation
#
#
#
# @within function asset:mob/0324.slash_entity/tick/

# アイテムのモデル設定
    data modify entity @s item set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:20334}}

# カラー
    data modify entity @s item.tag.display.color set from storage api: Argument.FieldOverride.Color