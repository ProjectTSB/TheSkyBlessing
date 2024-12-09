#> api:entity/mob/effect/remove/from_id
#
# entityから特定のエフェクトを削除します
#
# @input storage api:
#   Argument.ID : int
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.ID unless score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/remove/from_id
    execute if data storage api: Argument.ID if score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/apply_to_forward_target/only_initial_apply.m {CB:"api:entity/mob/effect/core/remove/from_id"}
