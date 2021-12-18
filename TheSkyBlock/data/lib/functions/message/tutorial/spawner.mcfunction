#> lib:message/tutorial/spawner
#
# 「◆ スポナーについて
#   この世界に配置されているスポナーは、どんなツールや神器を使っても壊すことは出来ません。
#   しかし壊せないわけではありません。殆どのスポナーには耐久力が存在し、そのスポナーより出現したモブを倒すことで壊すことが可能です。」
#
# @within function world_manager:area/01-05.tutorial-spawner

execute if score $PlayerCount Global matches ..1 run tellraw @s [{"text":"◆ スポナーについて\n","color":"light_purple"},{"text":"この世界に配置されているスポナーは、どんなツールや神器を使っても壊すことは出来ません。\nしかし壊せないわけではありません。殆どのスポナーには耐久力が存在し、そのスポナーより出現したモブを倒すことで壊すことが可能です。","color":"white"}]
execute if score $PlayerCount Global matches 2.. run tellraw @s [{"text":"◆ スポナーについて\n","color":"light_purple"},{"text":"この世界に配置されているスポナーは、どんなツールや神器を使っても壊すことは出来ません。\nしかし壊せないわけではありません。殆どのスポナーには耐久力が存在し、そのスポナーより出現したモブを倒すことで壊すことが可能です。","color":"white"}]