#> api:damage/core/get_epf/
#
# プロテクションのEPFを取得します
#
# @within function api:damage/core/get_status/

# エンチャントを取得する
    data modify storage api: Enchantments set value []
    execute if entity @s[type=player] run function api:damage/core/get_epf/player
    execute if entity @s[type=!player] run function api:damage/core/get_epf/non-player
# protectionは常に計算される
    # セッション開く
        function lib:array/session/open
    # 総和を取る
        data modify storage lib: Array append from storage api: Enchantments[{id:"minecraft:protection"}].lvl
        function lib:array/math/sum
        execute store result score $EPF Temporary run data get storage lib: SumResult
    # セッション閉じる
        function lib:array/session/close
# protection以外のなんらかのエンチャントで軽減できる場合の計算処理
    execute if data storage api: Argument.ReduceEnchantment run function api:damage/core/get_epf/get_non-protection_epf
# リセット
    data remove storage api: Enchantments