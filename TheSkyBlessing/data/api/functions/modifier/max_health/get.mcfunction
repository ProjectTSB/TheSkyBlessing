#> api:modifier/max_health/get
#
# 実行プレイヤーの最大体力を取得します
# player_manager:cache_max_health で OhMyDat にキャッシュした値を返すので、
# ScoreToHealth が体力同期のために一時的に max_health 属性へ modifier を付与しているタイミングでも、
# その干渉を除いた本来の最大体力を返します
#
# @input as player
# @output storage api: Return.MaxHealth : double
# @api

# 非プレイヤー実行ガード
    execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/max_health/get が非プレイヤーに対して使用されています","color":"white"}]

# PlayerStorage 呼び出し
    function oh_my_dat:please
# キャッシュから出力 (前回値の残留を防ぐため事前 remove)
    data remove storage api: Return.MaxHealth
    data modify storage api: Return.MaxHealth set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MaxHealth
