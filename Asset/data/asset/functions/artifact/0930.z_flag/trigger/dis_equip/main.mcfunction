#> asset:artifact/0930.z_flag/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0930.z_flag/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $PU.ItemNumber

# 神器ID930がホットバー内にあるか確認する。
    execute store result score $PU.ItemNumber Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:930}}}]

# ホットバー内に残ってない場合（$PU.ItemNumber<=0)modifierと効果付与済みフラグのタグを消す
    data modify storage api: Argument.UUID set value [I;1,1,930,7]
    execute if score $PU.ItemNumber Temporary matches ..0 if entity @s[tag=PU.Modifier] run function api:modifier/attack/physical/remove

    data modify storage api: Argument.UUID set value [I;1,1,930,7]
    execute if score $PU.ItemNumber Temporary matches ..0 if entity @s[tag=PU.Modifier] run function api:modifier/defense/base/remove

    execute if score $PU.ItemNumber Temporary matches ..0 if entity @s[tag=PU.Modifier] run tag @s[tag=PU.Modifier] remove PU.Modifier


# APIの引数が残ったままfunctionを抜けるの防止用
    execute if score $PU.ItemNumber Temporary matches 2.. run data remove storage api: Argument.UUID
    execute if score $PU.ItemNumber Temporary matches 2.. run data remove storage api: Argument.Amount
    execute if score $PU.ItemNumber Temporary matches 2.. run data remove storage api: Argument.Operation


