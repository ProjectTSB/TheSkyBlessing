#> core:migration/
#
#
#
# @within function core:load

execute if data storage global {GameVersion:"v1.0.0"} run function core:migration/v1.0.1/
execute if data storage global {GameVersion:"v1.0.1"} run function core:migration/v1.0.2/
execute if data storage global {GameVersion:"v1.0.2"} run function core:migration/v1.0.3/
execute if data storage global {GameVersion:"v1.0.3"} run function core:migration/v1.0.4/
