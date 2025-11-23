#> metric:user_id
#
#
#
# @within function core:handler/first_join

data modify storage metric: User.Pair append value {}
execute store result storage metric: User.Pair[-1].ID int 1 run scoreboard players get @s UserID
data modify storage metric: User.Pair[-1].Name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name
data modify storage metric: User.Pair[-1].Joined set from storage global Time
