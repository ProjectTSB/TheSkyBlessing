function lib:array/session/open
data modify storage lib: Array set value [{id:2},{id:1},{id:3},{id:3},{id:1}]
function lib:array/distinct
tellraw @a [{"storage":"lib:","nbt":"Array"}]
function lib:array/session/close
