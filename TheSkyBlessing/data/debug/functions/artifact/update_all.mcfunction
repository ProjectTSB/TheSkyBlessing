#> debug:artifact/update_all
# @private
# @user

execute if entity @a[predicate=lib:in_battle] run return run tellraw @s [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"神器を更新するには全てのプレイヤーが非戦闘中である必要があります。"}]

execute as @a run function debug:artifact/core/update_all/

tellraw @a [{"storage":"global","nbt":"Prefix.SUCCESS"},{"text":"全プレイヤーの神器を最新のものに更新しました。"}]
