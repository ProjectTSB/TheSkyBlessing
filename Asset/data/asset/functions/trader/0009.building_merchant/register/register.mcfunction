#> asset:trader/0009.building_merchant/register/register
#
#
#
# @within function asset:trader/0009.building_merchant/register/

# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:39,Y:21,Z:-70}

# ID (int)
    data modify storage asset:trader ID set value 9
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"建材商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 下位通貨を砂に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sand",Count:16b}

# 取引 下位通貨を赤砂に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:red_sand",Count:16b}

# 取引 下位通貨を砂利に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:gravel",Count:16b}

# 取引 下位通貨を粘土ブロックに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:clay",Count:8b}

# 取引 下位通貨を花崗岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:granite",Count:8b}

# 取引 下位通貨を閃緑岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:diorite",Count:8b}

# 取引 下位通貨を安山岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:andesite",Count:8b}

# 取引 下位通貨を深層岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:deepslate",Count:8b}

# 取引 下位通貨をブラックストーンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:blackstone",Count:8b}

# 取引 下位通貨をクォーツブロックに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:quartz_block",Count:8b}

# 取引 下位通貨を玄武岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:basalt",Count:8b}

# 取引 下位通貨をエンドストーンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:end_stone",Count:8b}

# 取引 下位通貨をプルプァブロックに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:purpur_block",Count:8b}

# 取引 下位通貨をネザーレンガに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:nether_brick",Count:16b}

# 取引 下位通貨をプリズマリンの欠片に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:prismarine_shard",Count:16b}

# 取引 下位通貨をグロウストーンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:glowstone",Count:2b}

# 取引 下位通貨をシーランタンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sea_lantern",Count:2b}

# 取引 下位通貨をシュルームライトに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:shroomlight",Count:2b}

# 取引 オークの苗木をトウヒの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"spruce_sapling",Count:1b}

# 取引 オークの苗木を白樺の苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"birch_sapling",Count:1b}

# 取引 オークの苗木をジャングルの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"jungle_sapling",Count:1b}

# 取引 オークの苗木をアカシアの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"acacia_sapling",Count:1b}

# 取引 オークの苗木をダークオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"dark_oak_sapling",Count:1b}

# 取引 オークの苗木をマングローブの芽に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"mangrove_propagule",Count:1b}

# 取引 オークの苗木を桜の苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"cherry_sapling",Count:1b}

# 取引 オークの苗木を深紅のキノコに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"crimson_fungus",Count:1b}

# 取引 オークの苗木を歪んだキノコに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"warped_fungus",Count:1b}

# 取引 トウヒの苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"spruce_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 白樺の苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"birch_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 ジャングルの苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"jungle_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 アカシアの苗木にをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"acacia_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 ダークオークの苗木にをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"dark_oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 マングローブの芽をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"mangrove_propagule",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 桜の苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"cherry_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 深紅のキノコをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"crimson_fungus",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 歪んだキノコをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"warped_fungus",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 下位通貨を深紅のナイリウムに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:crimson_nylium",Count:4b}

# 取引 下位通貨を歪んだナイリウムに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:warped_nylium",Count:4b}

# 取引 下位通貨を白色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"white_dye",Count:8b}

# 取引 下位通貨を薄灰色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"light_gray_dye",Count:8b}

# 取引 下位通貨を灰色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"gray_dye",Count:8b}

# 取引 下位通貨を黒色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"black_dye",Count:8b}

# 取引 下位通貨を茶色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"brown_dye",Count:8b}

# 取引 下位通貨を赤色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"red_dye",Count:8b}

# 取引 下位通貨を橙色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"orange_dye",Count:8b}

# 取引 下位通貨を黄色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"yellow_dye",Count:8b}

# 取引 下位通貨を黄緑色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"lime_dye",Count:8b}

# 取引 下位通貨を緑色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"green_dye",Count:8b}

# 取引 下位通貨を青緑色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"cyan_dye",Count:8b}

# 取引 下位通貨を空色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"light_blue_dye",Count:8b}

# 取引 下位通貨を青色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"blue_dye",Count:8b}

# 取引 下位通貨を紫色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"purple_dye",Count:8b}

# 取引 下位通貨を赤紫色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"magenta_dye",Count:8b}

# 取引 下位通貨を桃色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"pink_dye",Count:8b}

# 登録
    function asset:trader/common/register