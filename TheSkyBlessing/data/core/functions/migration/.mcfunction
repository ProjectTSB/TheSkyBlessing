#> core:migration/
#
#
#
# @within function core:load

execute if data storage global {GameVersion:"v0.1.0"} run function core:migration/v0.1.1/
execute if data storage global {GameVersion:"v0.1.1"} run function core:migration/v0.1.2/
execute if data storage global {GameVersion:"v0.1.2"} run function core:migration/v0.1.3/