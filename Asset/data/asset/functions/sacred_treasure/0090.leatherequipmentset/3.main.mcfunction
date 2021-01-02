#> asset:sacred_treasure/0090.leatherequipmentset/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0090.leatherequipmentset/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

#テスト後で消す
    say test: 0090.leatherequipmentset

# 装備変更
    replaceitem entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head minecraft:leather_helmet{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    replaceitem entity @s[nbt=!{Inventory:[{Slot:102b}]}] armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    replaceitem entity @s[nbt=!{Inventory:[{Slot:101b}]}] armor.legs minecraft:leather_leggings{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    replaceitem entity @s[nbt=!{Inventory:[{Slot:100b}]}] armor.feet minecraft:leather_boots{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1

# 装備変更成功の時
    execute as @s[nbt=!{Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.1 50
    execute as @s[nbt=!{Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

# 装備変更失敗の時
    execute as @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
    execute as @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0.5