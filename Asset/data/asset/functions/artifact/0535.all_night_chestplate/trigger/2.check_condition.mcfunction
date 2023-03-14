#> asset:artifact/0535.all_night_chestplate/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0535.all_night_chestplate/trigger/1.trigger
#> score
# @private
    #declare score_holder $Daytime
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く

# 今が夜かどうか確認
    execute store result score $Daytime Temporary run time query daytime

# 装備をすべて着ているが、夜じゃない場合
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:534}}},{Slot:101b,tag:{TSB:{ID:536}}},{Slot:100b,tag:{TSB:{ID:537}}}]} if score $Daytime Temporary matches 0..12000 run tag @s remove CanUsed

# 演出（使用できないときのメッセージだすとうるさいのでなし）
    execute unless entity @s[tag=CanUsed] run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 20 normal @s
    execute unless entity @s[tag=CanUsed] run playsound minecraft:block.stone_button.click_off player @s ~ ~ ~ 1 2

# 装備が足りない場合
    execute unless data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:534}}},{Slot:101b,tag:{TSB:{ID:536}}},{Slot:100b,tag:{TSB:{ID:537}}}]} run tag @s remove CanUsed

# リセット
    scoreboard players reset $Daytime Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0535.all_night_chestplate/trigger/3.main