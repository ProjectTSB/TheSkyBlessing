#> asset:sacred_treasure/0093.diamond_armor_set/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0093.diamond_armor_set/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 装備変更成功の時
    execute unless entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.1 50
    execute unless entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

# 装備変更失敗の時
    execute if entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
    execute if entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0.5

# 装備返却処理
    execute if entity @s[nbt={Inventory:[{Slot:103b}]}] run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:diamond_helmet",Count:1b,tag:{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute if entity @s[nbt={Inventory:[{Slot:102b}]}] run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:diamond_chestplate",Count:1b,tag:{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute if entity @s[nbt={Inventory:[{Slot:101b}]}] run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:diamond_leggings",Count:1b,tag:{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute if entity @s[nbt={Inventory:[{Slot:100b}]}] run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:diamond_boots",Count:1b,tag:{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}

# 装備変更
    replaceitem entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head minecraft:diamond_helmet{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    replaceitem entity @s[nbt=!{Inventory:[{Slot:102b}]}] armor.chest minecraft:diamond_chestplate{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    replaceitem entity @s[nbt=!{Inventory:[{Slot:101b}]}] armor.legs minecraft:diamond_leggings{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    replaceitem entity @s[nbt=!{Inventory:[{Slot:100b}]}] armor.feet minecraft:diamond_boots{display:{Name:'{"text":"簡易ダイヤ防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1