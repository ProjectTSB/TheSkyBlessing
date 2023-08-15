#> asset:mob/9000.slash_entity/tick/start_animation
#
#
#
# @within function asset:mob/9000.slash_entity/tick/

# アイテムのモデル設定
    data modify entity @s item set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:0}}

# カスタムモデルデータ適用
    execute if data storage asset:context this.CustomModelData run data modify entity @s item.tag.CustomModelData set from storage asset:context this.CustomModelData

# データ未指定ならデフォルトの見た目にする
    execute unless data storage asset:context this.CustomModelData run data modify entity @s item.tag.CustomModelData set value 20335

# カラー
    data modify entity @s item.tag.display.color set from storage asset:context this.Color