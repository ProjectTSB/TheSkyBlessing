#> api:entity/mob/effect/get/from_id
#
# ID指定で自分の持つエフェクトを拾い上げる
#
# @input storage api:
#   Argument.ID : int
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.ID run function api:entity/mob/effect/core/get/from_id with storage api: Argument
# reset
    data remove storage api: Argument.ID