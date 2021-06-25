#> api:mob/summon
#
# MobAssetの召喚処理を叩く処理
#
# @input storage api: Argument.ID
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument ID at api:mob/summon"}}}]
# 代入
    data modify storage asset:context ID set from storage api: Argument.ID
# 呼び出し
    execute if data storage api: Argument.ID run function #asset:mob/summon
# リセット
    data remove storage asset:context ID
    data remove storage api: Argument