#> world_manager:gimmick/darkness/check/.m
#
#
#
# @input args
#   X : int
#   Y : int
#   Z : int
# @within function world_manager:gimmick/darkness/do

$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-0 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:0}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-1 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:1}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-2 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:2}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-3 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:3}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-4 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:4}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-5 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:5}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-6 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:6}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-7 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:7}
$execute positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-8 ~ if predicate world_manager:gimmick/darkness/in_valid_spot run return run function world_manager:gimmick/darkness/check/check.m {Sub:8}

return fail
