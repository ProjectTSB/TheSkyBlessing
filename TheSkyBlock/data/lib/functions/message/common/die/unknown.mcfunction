#> lib:message/common/die/unknown
#
#
#
# @within function lib:score_to_health_wrapper/core/show_death_message

tellraw @a [{"translate": "%1$sは%2$sの未知の力によってその命を終えた","with":[{"selector":"@s"},{"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo","storage":"oh_my_dat:","interpret":true}]}]