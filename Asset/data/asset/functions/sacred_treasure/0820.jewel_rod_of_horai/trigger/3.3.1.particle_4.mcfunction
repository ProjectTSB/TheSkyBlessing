#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_4
#
# @within
#   function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.5.attack_effect

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAMwBmAbNQEYDsALCgLQoCscATOyy4sAnOwCGABi5iB1AIwpWYpgA4uK2mAIA7MQFsEyQGGKAAjlawMMRn0BnJOBQB7QtohJKEgijhu4GBzAANzFsQkNwAA8kLzAoGIBfBIIbUjRCe0Q5AlsIa3cslVi4bGw0GFtDOQlYjCc8iENYtFsAUVLyytaAR0JQ7CgAZSsfckRqUMqkvHBoeAoy7XwiEjGwWgUUFglqLnZeDZYBOTladgZSZnZSSRYVYV2fBjELXQMKQC3fMwsrGz1MxwuNxIaoEah1PSBEJhCJgaKIdgSAB0LAI8QRyJUTGmkCcUNC4UC8MRKLRMSRWJxTmo1EqBViDDgAC80P4kCSuAQWgAhZmsjA9PqlIYjOBjCbYKbJWawQxgRbLYhkCiUG4SYRSCT7BiUBgCDVatSkI6XUgoXg0MV0LivfRyr5ydhobRBH7WOyBZyuAqgsDgpyQxDgaGEoNw8mouLszHY5K4-EwokRsmIGNUml0mIERkstmppGcsA8vn+QX9EViUZICVSmaQWULZ2K1YUG6kORiYTCUja9UCFgMfj3G7sShwMSUMRiRlwTy8W3vZBfecEX4esNe4FZWL+wPBgmw+GxdHsOQ4iB4sMhw9ZqNZdO0uD07MlgKprm2Xm5gW9cvDStitWkxwEkAC6QA_3
# 円 1
    particle electric_spark ^-0.20791 ^0.97815 ^ 0 0 0 0 1
    particle electric_spark ^-0.40674 ^0.91355 ^ 0 0 0 0 1
    particle electric_spark ^-0.58779 ^0.80902 ^ 0 0 0 0 1
    particle electric_spark ^-0.74314 ^0.66913 ^ 0 0 0 0 1
    particle electric_spark ^-0.86603 ^0.5 ^ 0 0 0 0 1
    particle electric_spark ^-0.99452 ^0.10453 ^ 0 0 0 0 1
    particle electric_spark ^-0.99452 ^-0.10453 ^ 0 0 0 0 1
    particle electric_spark ^-0.95106 ^-0.30902 ^ 0 0 0 0 1
    particle electric_spark ^-0.86603 ^-0.5 ^ 0 0 0 0 1
    particle electric_spark ^-0.74314 ^-0.66913 ^ 0 0 0 0 1
    particle electric_spark ^-0.40674 ^-0.91355 ^ 0 0 0 0 1
    particle electric_spark ^-0.20791 ^-0.97815 ^ 0 0 0 0 1
    particle electric_spark ^0 ^-1 ^ 0 0 0 0 1
    particle electric_spark ^0.20791 ^-0.97815 ^ 0 0 0 0 1
    particle electric_spark ^0.40674 ^-0.91355 ^ 0 0 0 0 1
    particle electric_spark ^0.74314 ^-0.66913 ^ 0 0 0 0 1
    particle electric_spark ^0.86603 ^-0.5 ^ 0 0 0 0 1
    particle electric_spark ^0.95106 ^-0.30902 ^ 0 0 0 0 1
    particle electric_spark ^0.99452 ^-0.10453 ^ 0 0 0 0 1
    particle electric_spark ^0.99452 ^0.10453 ^ 0 0 0 0 1
    particle electric_spark ^0.86603 ^0.5 ^ 0 0 0 0 1
    particle electric_spark ^0.74314 ^0.66913 ^ 0 0 0 0 1
    particle electric_spark ^0.58779 ^0.80902 ^ 0 0 0 0 1
    particle electric_spark ^0.40674 ^0.91355 ^ 0 0 0 0 1
    particle electric_spark ^0.20791 ^0.97815 ^ 0 0 0 0 1

# 三日月パーティクル
    execute positioned ^0 ^1 ^ run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_crescent_blue
    execute positioned ^0.95106 ^0.30902 ^ run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_crescent_red
    execute positioned ^0.58779 ^-0.80902 ^ run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_crescent_yellow
    execute positioned ^-0.58779 ^-0.80902 ^ run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_crescent_green
    execute positioned ^-0.95106 ^0.30902 ^ run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_crescent_purple

# 攻撃対象への攻撃予告パーティクル
    execute positioned ^0 ^1 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_white
    execute positioned ^0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_white
    execute positioned ^0.58779 ^-0.80902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_white
    execute positioned ^-0.58779 ^-0.80902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_white
    execute positioned ^-0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_white