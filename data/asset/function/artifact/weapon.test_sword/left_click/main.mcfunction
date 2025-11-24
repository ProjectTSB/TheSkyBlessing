#> asset:artifact/weapon.test_sword/left_click/main
#
#
#
# @within function asset:artifact/weapon.test_sword/left_click/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

playsound entity.witch.throw player @a ~ ~ ~ 1 1

execute anchored eyes positioned ^ ^ ^3 run particle explosion ~ ~ ~ 0 0 0 1 0
