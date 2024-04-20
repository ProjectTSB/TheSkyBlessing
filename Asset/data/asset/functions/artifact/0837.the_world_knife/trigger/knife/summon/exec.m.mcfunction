#> asset:artifact/0837.the_world_knife/trigger/knife/summon/exec.m
# @within function asset:artifact/0837.the_world_knife/trigger/knife/summon/
# @input args
#   Rotation : float @ 2
#   Pose : float @ 3

$summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Small:1b,Rotation:$(Rotation),Pose:{Head:$(Pose)},Tags:["N9.First","N9.Knife","Projectile"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:837}}]}
