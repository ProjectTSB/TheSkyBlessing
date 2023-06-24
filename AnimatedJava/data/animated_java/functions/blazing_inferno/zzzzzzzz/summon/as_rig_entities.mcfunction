scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:blazing_inferno/on_summon/as_rig_entities
execute if entity @s[tag=aj.blazing_inferno.bone] run function #animated_java:blazing_inferno/zzzzzzzz/on_summon/as_bones

