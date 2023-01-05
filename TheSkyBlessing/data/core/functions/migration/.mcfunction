#> core:migration/
#
#
#
# @within function core:load

execute if data storage global {GameVersion:"v0.1.0"} run function core:migration/v0.1.1/
execute if data storage global {GameVersion:"v0.1.1"} run function core:migration/v0.1.2/
execute if data storage global {GameVersion:"v0.1.2"} run function core:migration/v0.1.3/
execute if data storage global {GameVersion:"v0.1.3"} run function core:migration/v0.1.4/
execute if data storage global {GameVersion:"v0.1.4"} run function core:migration/v0.1.5/
execute if data storage global {GameVersion:"v0.1.5"} run function core:migration/v0.1.6/