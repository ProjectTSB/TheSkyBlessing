#> asset:sacred_treasure/0091.iron_armor_set/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0091.iron_armor_set/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 装備変更成功の時
    execute unless data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.1 50
    execute unless data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

# 装備変更失敗の時
    execute if data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
    execute if data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0.5

# 装備返却処理
    execute if data storage asset:context {Inventory:[{Slot:103b}]} run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:iron_helmet",Count:1b,tag:{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute if data storage asset:context {Inventory:[{Slot:102b}]} run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute if data storage asset:context {Inventory:[{Slot:101b}]} run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:iron_leggings",Count:1b,tag:{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute if data storage asset:context {Inventory:[{Slot:100b}]} run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}

# 装備変更
    execute unless data storage asset:context {Inventory:[{Slot:103b}]} run item replace entity @s armor.head with minecraft:iron_helmet{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    execute unless data storage asset:context {Inventory:[{Slot:102b}]} run item replace entity @s armor.chest with minecraft:iron_chestplate{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    execute unless data storage asset:context {Inventory:[{Slot:101b}]} run item replace entity @s armor.legs with minecraft:iron_leggings{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    execute unless data storage asset:context {Inventory:[{Slot:100b}]} run item replace entity @s armor.feet with minecraft:iron_boots{display:{Name:'{"text":"簡易鉄防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1