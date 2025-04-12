#> player_manager:god/change_believe/unbelieve2
#
#
#
# @within function player_manager:god/change_believe/change_task

# 共通処理
    tag @s add Believe.None
    function oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems
# 各神固有処理
    execute if entity @s[tag=Believe.Flora] run function lib:message/god/flora/unbelieve2
    execute if entity @s[tag=Believe.Flora] run function player_manager:god/flora/unbelieve
    execute if entity @s[tag=Believe.Nyaptov] run function lib:message/god/nyaptov/unbelieve2
    execute if entity @s[tag=Believe.Nyaptov] run function player_manager:god/nyaptov/unbelieve
    execute if entity @s[tag=Believe.Rumor] run function lib:message/god/rumor/unbelieve2
    execute if entity @s[tag=Believe.Rumor] run function player_manager:god/rumor/unbelieve
    execute if entity @s[tag=Believe.Urban] run function lib:message/god/urban/unbelieve2
    execute if entity @s[tag=Believe.Urban] run function player_manager:god/urban/unbelieve
    execute if entity @s[tag=Believe.Wi-ki] run function lib:message/god/wi-ki/unbelieve2
    execute if entity @s[tag=Believe.Wi-ki] run function player_manager:god/wi-ki/unbelieve
# 全装備を再チェック
    tag @s add Believe.Changed
