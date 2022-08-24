#> lib:damage/core/get_epf/
#
# プロテクションのEPFを取得します
#
# @within function lib:damage/core/get_status/cons_resist

# エンチャントを取得する
    data modify storage lib: Enchantments set value []
    execute if entity @s[type=player] run function lib:damage/core/get_epf/player
    execute if entity @s[type=!player] run function lib:damage/core/get_epf/non-player
# protectionは常に計算される
    execute store result score $EPF Temporary run data get storage lib: Enchantments[{id:"minecraft:protection"}].lvl
# protection以外のなんらかのエンチャントで軽減できる場合の計算処理
    execute if data storage lib: Argument.ReduceEnchantment run function lib:damage/core/get_epf/get_non-protection_epf
# リセット
    data remove storage lib: Enchantments