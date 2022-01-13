#> core:migration/
#
#
#
# @within function core:load

execute unless data storage global GameVersion run function core:migration/v0.0.1/
execute if data storage global {GameVersion:"v0.0.1"} run function core:migration/v0.0.2/