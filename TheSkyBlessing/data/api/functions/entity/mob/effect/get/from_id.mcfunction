#> api:entity/mob/effect/get/from_id
#
# ID指定で自分の持つエフェクトを拾い上げる
#
# @input
#   as player
#   storage api:
#       Argument.ID : int
# @output storage api: Return.Effect
# @api

# 引数を確認する
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]

# 指定 ID の Effect を取得する
    execute if data storage api: Argument.ID run function api:entity/mob/effect/core/get/from_id.m with storage api: Argument

# 引数をリセット
    data remove storage api: Argument.ID
