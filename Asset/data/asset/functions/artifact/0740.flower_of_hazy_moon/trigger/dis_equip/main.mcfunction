#> asset:artifact/0740.flower_of_hazy_moon/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0740.flower_of_hazy_moon/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $KK.ItemCount

# まだ持ってるか確認する
    execute store result score $KK.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:740}}}]

# なければ削除
    execute if score $KK.ItemCount Temporary matches ..0 run function asset:artifact/0740.flower_of_hazy_moon/trigger/dis_equip/remove_modifier

# リセット
    scoreboard players reset $KK.ItemCount Temporary