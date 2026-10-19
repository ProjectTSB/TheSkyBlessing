#> debug:read_sign/core/.m
# @input args
#   Path : string
#   Line : (0 | 1 | 2 | 3)
# @within function debug:read_sign/.m

$data modify storage debug:read_sign Data.$(Path) set string block ~ ~ ~ front_text.messages[$(Line)] 1 -1
