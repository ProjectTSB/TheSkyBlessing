#> asset:object/0000.sample/summon/
#
# オブジェクトの召喚処理
#
# @within function asset:object/alias/0/summon

# 元となるEntityを召喚する
# 「防具をかぶせたアーマースタンドがいい」とかそういう場合は、モブアセットとは違いここにそのまま書くこと
    summon item_display ~ ~ ~ {teleport_duration:1,billboard:"center",Tags:["ObjectInit"],item:{id:"minecraft:ender_pearl",Count:1b}}

# オブジェクトはモブとは違い、基本的には対象とされない。
# Tick以外のトリガーを持たないためモブより軽いが、その分用途は限られがち。
# 飛び道具や演出など、モブではないがTickさせたいものに使うこと。
# 「攻撃で破壊可能な飛び道具や設置物」といった、こちらの攻撃が当たるものや、
# 「バニラAIで攻撃してくるもの」といった、コマンドではない手段で攻撃してくるものはMobAssetで実装すること。
