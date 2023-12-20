#> player_manager:god/mercy/offering/init
#
# 慈悲を乞うための供物データを定義します
#
# @within function core:load_once

# フローラ
    data modify storage player_manager:god OfferingData.Flora.GodName set value "フローラ"
    data modify storage player_manager:god OfferingData.Flora.Items set value []
    data modify storage player_manager:god OfferingData.Flora.Items append value {Item:{id:"minecraft:poppy"},Amount:[10,30],Name:'{"translate":"block.minecraft.poppy"}'}
    data modify storage player_manager:god OfferingData.Flora.Items append value {Item:{id:"minecraft:dandelion"},Amount:[10,30],Name:'{"translate":"block.minecraft.dandelion"}'}
    data modify storage player_manager:god OfferingData.Flora.Items append value {Item:{id:"minecraft:cornflower"},Amount:[10,30],Name:'{"translate":"block.minecraft.cornflower"}'}
# ニャプトフ
    data modify storage player_manager:god OfferingData.Nyaptov.GodName set value "ニャプトフ"
    data modify storage player_manager:god OfferingData.Nyaptov.Items set value []
    data modify storage player_manager:god OfferingData.Nyaptov.Items append value {Item:{id:"minecraft:cod"},Amount:[15,30],Name:'{"translate":"item.minecraft.cod"}'}
    data modify storage player_manager:god OfferingData.Nyaptov.Items append value {Item:{id:"minecraft:salmon"},Amount:[5,15],Name:'{"translate":"item.minecraft.salmon"}'}
    data modify storage player_manager:god OfferingData.Nyaptov.Items append value {Item:{id:"minecraft:tropical_fish"},Amount:[2,4],Name:'{"translate":"item.minecraft.tropical_fish"}'}
# ルーモア
    data modify storage player_manager:god OfferingData.Rumor.GodName set value "ルーモア"
    data modify storage player_manager:god OfferingData.Rumor.Items set value []
    data modify storage player_manager:god OfferingData.Rumor.Items append value {Item:{id:"minecraft:oak_log"},Amount:[30,60],Name:'{"translate":"block.minecraft.oak_log"}'}
    data modify storage player_manager:god OfferingData.Rumor.Items append value {Item:{id:"minecraft:bread"},Amount:[15,25],Name:'{"translate":"item.minecraft.bread"}'}
    data modify storage player_manager:god OfferingData.Rumor.Items append value {Item:{id:"minecraft:string"},Amount:[10,20],Name:'{"translate":"item.minecraft.string"}'}
# ウルバン
    data modify storage player_manager:god OfferingData.Urban.GodName set value "ウルバン"
    data modify storage player_manager:god OfferingData.Urban.Items set value []
    data modify storage player_manager:god OfferingData.Urban.Items append value {Item:{id:"minecraft:iron_ingot"},Amount:[4,8],Name:'{"translate":"item.minecraft.iron_ingot"}'}
    data modify storage player_manager:god OfferingData.Urban.Items append value {Item:{id:"minecraft:coal"},Amount:[4,8],Name:'{"translate":"item.minecraft.coal"}'}
    data modify storage player_manager:god OfferingData.Urban.Items append value {Item:{id:"minecraft:gunpowder"},Amount:[10,20],Name:'{"translate":"item.minecraft.gunpowder"}'}
# ウィ＝キ
    data modify storage player_manager:god OfferingData.Wi-ki.GodName set value "ウィ＝キ"
    data modify storage player_manager:god OfferingData.Wi-ki.Items set value []
    data modify storage player_manager:god OfferingData.Wi-ki.Items append value {Item:{id:"minecraft:paper"},Amount:[30,60],Name:'{"translate":"item.minecraft.paper"}'}
    data modify storage player_manager:god OfferingData.Wi-ki.Items append value {Item:{id:"minecraft:book"},Amount:[4,8],Name:'{"translate":"item.minecraft.book"}'}
    data modify storage player_manager:god OfferingData.Wi-ki.Items append value {Item:{id:"minecraft:ink_sac"},Amount:[5,15],Name:'{"translate":"item.minecraft.ink_sac"}'}