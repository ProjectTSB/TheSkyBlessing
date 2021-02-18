#> lib:debug/objective_view
#
# すべてのスコアボードObjectiveの@sをdebugスコアボードに表示します
#
# @within function core:tick

scoreboard players operation $AttackedEntity Debug = @s AttackedEntity
scoreboard players operation $AttackingEntity Debug = @s AttackingEntity
scoreboard players operation $FallDistance Debug = @s FallDistance
scoreboard players operation $Health Debug = @s Health
scoreboard players operation $Hunger Debug = @s Hunger
scoreboard players operation $HungerTarget Debug = @s HungerTarget
scoreboard players operation $MP Debug = @s MP
scoreboard players operation $MPMax Debug = @s MPMax
scoreboard players operation $Sneak Debug = @s Sneak
scoreboard players operation $Sneak.Chest Debug = @s Sneak.Chest
scoreboard players operation $Sneak.Feet Debug = @s Sneak.Feet
scoreboard players operation $Sneak.Head Debug = @s Sneak.Head
scoreboard players operation $Sneak.Legs Debug = @s Sneak.Legs
scoreboard players operation $Sneak.Mainhand Debug = @s Sneak.Mainhand
scoreboard players operation $Sneak.Offhand Debug = @s Sneak.Offhand