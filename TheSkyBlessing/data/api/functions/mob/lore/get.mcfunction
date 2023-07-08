#> api:mob/lore/get
#
# モブに設定されたLoreを取得する
#
# @input as entity
# @output storage api: Return.Lore
# @api

# 取得
    execute store result storage api: Argument.Address int 1 run scoreboard players get @s MobID
    function api:rom/please
    data modify storage api: Return.Lore set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Lore