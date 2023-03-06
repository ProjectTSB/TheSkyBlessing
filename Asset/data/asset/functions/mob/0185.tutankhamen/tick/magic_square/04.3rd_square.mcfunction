#> asset:mob/0185.tutankhamen/tick/magic_square/04.3rd_square
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/01.main

# 演出
    playsound entity.evoker.prepare_summon hostile @a[distance=..20] ~ ~ ~ 0.8 1 0.4

# ダメージ
    execute if entity @s[scores={55.Tick=60}] if entity @a[tag=!PlayerShouldInvulnerable,distance=..4] run function asset:mob/0185.tutankhamen/tick/magic_square/09.3rd_damage
# 中円
    particle witch ^0 ^ ^-4 0 0 0 0 1
    particle witch ^0.27903 ^ ^-3.99026 0 0 0 0 1
    particle witch ^0.55669 ^ ^-3.96107 0 0 0 0 1
    particle witch ^0.83165 ^ ^-3.91259 0 0 0 0 1
    particle witch ^1.10255 ^ ^-3.84505 0 0 0 0 1
    particle witch ^1.36808 ^ ^-3.75877 0 0 0 0 1
    particle witch ^1.62695 ^ ^-3.65418 0 0 0 0 1
    particle witch ^1.87789 ^ ^-3.53179 0 0 0 0 1
    particle witch ^2.11968 ^ ^-3.39219 0 0 0 0 1
    particle witch ^2.35114 ^ ^-3.23607 0 0 0 0 1
    particle witch ^2.57115 ^ ^-3.06418 0 0 0 0 1
    particle witch ^2.77863 ^ ^-2.87736 0 0 0 0 1
    particle witch ^2.97258 ^ ^-2.67652 0 0 0 0 1
    particle witch ^3.15204 ^ ^-2.46265 0 0 0 0 1
    particle witch ^3.31615 ^ ^-2.23677 0 0 0 0 1
    particle witch ^3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^3.59518 ^ ^-1.75348 0 0 0 0 1
    particle witch ^3.70874 ^ ^-1.49843 0 0 0 0 1
    particle witch ^3.80423 ^ ^-1.23607 0 0 0 0 1
    particle witch ^3.88118 ^ ^-0.96769 0 0 0 0 1
    particle witch ^3.93923 ^ ^-0.69459 0 0 0 0 1
    particle witch ^3.97809 ^ ^-0.41811 0 0 0 0 1
    particle witch ^3.99756 ^ ^-0.1396 0 0 0 0 1
    particle witch ^3.99756 ^ ^0.1396 0 0 0 0 1
    particle witch ^3.97809 ^ ^0.41811 0 0 0 0 1
    particle witch ^3.93923 ^ ^0.69459 0 0 0 0 1
    particle witch ^3.88118 ^ ^0.96769 0 0 0 0 1
    particle witch ^3.80423 ^ ^1.23607 0 0 0 0 1
    particle witch ^3.70874 ^ ^1.49843 0 0 0 0 1
    particle witch ^3.59518 ^ ^1.75348 0 0 0 0 1
    particle witch ^3.4641 ^ ^2 0 0 0 0 1
    particle witch ^3.31615 ^ ^2.23677 0 0 0 0 1
    particle witch ^3.15204 ^ ^2.46265 0 0 0 0 1
    particle witch ^2.97258 ^ ^2.67652 0 0 0 0 1
    particle witch ^2.77863 ^ ^2.87736 0 0 0 0 1
    particle witch ^2.57115 ^ ^3.06418 0 0 0 0 1
    particle witch ^2.35114 ^ ^3.23607 0 0 0 0 1
    particle witch ^2.11968 ^ ^3.39219 0 0 0 0 1
    particle witch ^1.87789 ^ ^3.53179 0 0 0 0 1
    particle witch ^1.62695 ^ ^3.65418 0 0 0 0 1
    particle witch ^1.36808 ^ ^3.75877 0 0 0 0 1
    particle witch ^1.10255 ^ ^3.84505 0 0 0 0 1
    particle witch ^0.83165 ^ ^3.91259 0 0 0 0 1
    particle witch ^0.55669 ^ ^3.96107 0 0 0 0 1
    particle witch ^0.27903 ^ ^3.99026 0 0 0 0 1
    particle witch ^0 ^ ^4 0 0 0 0 1
    particle witch ^-0.27903 ^ ^3.99026 0 0 0 0 1
    particle witch ^-0.55669 ^ ^3.96107 0 0 0 0 1
    particle witch ^-0.83165 ^ ^3.91259 0 0 0 0 1
    particle witch ^-1.10255 ^ ^3.84505 0 0 0 0 1
    particle witch ^-1.36808 ^ ^3.75877 0 0 0 0 1
    particle witch ^-1.62695 ^ ^3.65418 0 0 0 0 1
    particle witch ^-1.87789 ^ ^3.53179 0 0 0 0 1
    particle witch ^-2.11968 ^ ^3.39219 0 0 0 0 1
    particle witch ^-2.35114 ^ ^3.23607 0 0 0 0 1
    particle witch ^-2.57115 ^ ^3.06418 0 0 0 0 1
    particle witch ^-2.77863 ^ ^2.87736 0 0 0 0 1
    particle witch ^-2.97258 ^ ^2.67652 0 0 0 0 1
    particle witch ^-3.15204 ^ ^2.46265 0 0 0 0 1
    particle witch ^-3.31615 ^ ^2.23677 0 0 0 0 1
    particle witch ^-3.4641 ^ ^2 0 0 0 0 1
    particle witch ^-3.59518 ^ ^1.75348 0 0 0 0 1
    particle witch ^-3.70874 ^ ^1.49843 0 0 0 0 1
    particle witch ^-3.80423 ^ ^1.23607 0 0 0 0 1
    particle witch ^-3.88118 ^ ^0.96769 0 0 0 0 1
    particle witch ^-3.93923 ^ ^0.69459 0 0 0 0 1
    particle witch ^-3.97809 ^ ^0.41811 0 0 0 0 1
    particle witch ^-3.99756 ^ ^0.1396 0 0 0 0 1
    particle witch ^-3.99756 ^ ^-0.1396 0 0 0 0 1
    particle witch ^-3.97809 ^ ^-0.41811 0 0 0 0 1
    particle witch ^-3.93923 ^ ^-0.69459 0 0 0 0 1
    particle witch ^-3.88118 ^ ^-0.96769 0 0 0 0 1
    particle witch ^-3.80423 ^ ^-1.23607 0 0 0 0 1
    particle witch ^-3.70874 ^ ^-1.49843 0 0 0 0 1
    particle witch ^-3.59518 ^ ^-1.75348 0 0 0 0 1
    particle witch ^-3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^-3.31615 ^ ^-2.23677 0 0 0 0 1
    particle witch ^-3.15204 ^ ^-2.46265 0 0 0 0 1
    particle witch ^-2.97258 ^ ^-2.67652 0 0 0 0 1
    particle witch ^-2.77863 ^ ^-2.87736 0 0 0 0 1
    particle witch ^-2.57115 ^ ^-3.06418 0 0 0 0 1
    particle witch ^-2.35114 ^ ^-3.23607 0 0 0 0 1
    particle witch ^-2.11968 ^ ^-3.39219 0 0 0 0 1
    particle witch ^-1.87789 ^ ^-3.53179 0 0 0 0 1
    particle witch ^-1.62695 ^ ^-3.65418 0 0 0 0 1
    particle witch ^-1.36808 ^ ^-3.75877 0 0 0 0 1
    particle witch ^-1.10255 ^ ^-3.84505 0 0 0 0 1
    particle witch ^-0.83165 ^ ^-3.91259 0 0 0 0 1
    particle witch ^-0.55669 ^ ^-3.96107 0 0 0 0 1
    particle witch ^-0.27903 ^ ^-3.99026 0 0 0 0 1
# 最内三角
    particle witch ^3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^3.34863 ^ ^-1.8 0 0 0 0 1
    particle witch ^3.23316 ^ ^-1.6 0 0 0 0 1
    particle witch ^3.11769 ^ ^-1.4 0 0 0 0 1
    particle witch ^3.00222 ^ ^-1.2 0 0 0 0 1
    particle witch ^2.88675 ^ ^-1 0 0 0 0 1
    particle witch ^2.77128 ^ ^-0.8 0 0 0 0 1
    particle witch ^2.65581 ^ ^-0.6 0 0 0 0 1
    particle witch ^2.54034 ^ ^-0.4 0 0 0 0 1
    particle witch ^2.42487 ^ ^-0.2 0 0 0 0 1
    particle witch ^2.3094 ^ ^0 0 0 0 0 1
    particle witch ^2.19393 ^ ^0.2 0 0 0 0 1
    particle witch ^2.07846 ^ ^0.4 0 0 0 0 1
    particle witch ^1.96299 ^ ^0.6 0 0 0 0 1
    particle witch ^1.84752 ^ ^0.8 0 0 0 0 1
    particle witch ^1.73205 ^ ^1 0 0 0 0 1
    particle witch ^1.61658 ^ ^1.2 0 0 0 0 1
    particle witch ^1.50111 ^ ^1.4 0 0 0 0 1
    particle witch ^1.38564 ^ ^1.6 0 0 0 0 1
    particle witch ^1.27017 ^ ^1.8 0 0 0 0 1
    particle witch ^1.1547 ^ ^2 0 0 0 0 1
    particle witch ^1.03923 ^ ^2.2 0 0 0 0 1
    particle witch ^0.92376 ^ ^2.4 0 0 0 0 1
    particle witch ^0.80829 ^ ^2.6 0 0 0 0 1
    particle witch ^0.69282 ^ ^2.8 0 0 0 0 1
    particle witch ^0.57735 ^ ^3 0 0 0 0 1
    particle witch ^0.46188 ^ ^3.2 0 0 0 0 1
    particle witch ^0.34641 ^ ^3.4 0 0 0 0 1
    particle witch ^0.23094 ^ ^3.6 0 0 0 0 1
    particle witch ^0.11547 ^ ^3.8 0 0 0 0 1
    particle witch ^0 ^ ^4 0 0 0 0 1
    particle witch ^-0.11547 ^ ^3.8 0 0 0 0 1
    particle witch ^-0.23094 ^ ^3.6 0 0 0 0 1
    particle witch ^-0.34641 ^ ^3.4 0 0 0 0 1
    particle witch ^-0.46188 ^ ^3.2 0 0 0 0 1
    particle witch ^-0.57735 ^ ^3 0 0 0 0 1
    particle witch ^-0.69282 ^ ^2.8 0 0 0 0 1
    particle witch ^-0.80829 ^ ^2.6 0 0 0 0 1
    particle witch ^-0.92376 ^ ^2.4 0 0 0 0 1
    particle witch ^-1.03923 ^ ^2.2 0 0 0 0 1
    particle witch ^-1.1547 ^ ^2 0 0 0 0 1
    particle witch ^-1.27017 ^ ^1.8 0 0 0 0 1
    particle witch ^-1.38564 ^ ^1.6 0 0 0 0 1
    particle witch ^-1.50111 ^ ^1.4 0 0 0 0 1
    particle witch ^-1.61658 ^ ^1.2 0 0 0 0 1
    particle witch ^-1.73205 ^ ^1 0 0 0 0 1
    particle witch ^-1.84752 ^ ^0.8 0 0 0 0 1
    particle witch ^-1.96299 ^ ^0.6 0 0 0 0 1
    particle witch ^-2.07846 ^ ^0.4 0 0 0 0 1
    particle witch ^-2.19393 ^ ^0.2 0 0 0 0 1
    particle witch ^-2.3094 ^ ^0 0 0 0 0 1
    particle witch ^-2.42487 ^ ^-0.2 0 0 0 0 1
    particle witch ^-2.54034 ^ ^-0.4 0 0 0 0 1
    particle witch ^-2.65581 ^ ^-0.6 0 0 0 0 1
    particle witch ^-2.77128 ^ ^-0.8 0 0 0 0 1
    particle witch ^-2.88675 ^ ^-1 0 0 0 0 1
    particle witch ^-3.00222 ^ ^-1.2 0 0 0 0 1
    particle witch ^-3.11769 ^ ^-1.4 0 0 0 0 1
    particle witch ^-3.23316 ^ ^-1.6 0 0 0 0 1
    particle witch ^-3.34863 ^ ^-1.8 0 0 0 0 1
    particle witch ^-3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^-3.23316 ^ ^-2 0 0 0 0 1
    particle witch ^-3.00222 ^ ^-2 0 0 0 0 1
    particle witch ^-2.77128 ^ ^-2 0 0 0 0 1
    particle witch ^-2.54034 ^ ^-2 0 0 0 0 1
    particle witch ^-2.3094 ^ ^-2 0 0 0 0 1
    particle witch ^-2.07846 ^ ^-2 0 0 0 0 1
    particle witch ^-1.84752 ^ ^-2 0 0 0 0 1
    particle witch ^-1.61658 ^ ^-2 0 0 0 0 1
    particle witch ^-1.38564 ^ ^-2 0 0 0 0 1
    particle witch ^-1.1547 ^ ^-2 0 0 0 0 1
    particle witch ^-0.92376 ^ ^-2 0 0 0 0 1
    particle witch ^-0.69282 ^ ^-2 0 0 0 0 1
    particle witch ^-0.46188 ^ ^-2 0 0 0 0 1
    particle witch ^-0.23094 ^ ^-2 0 0 0 0 1
    particle witch ^0 ^ ^-2 0 0 0 0 1
    particle witch ^0.23094 ^ ^-2 0 0 0 0 1
    particle witch ^0.46188 ^ ^-2 0 0 0 0 1
    particle witch ^0.69282 ^ ^-2 0 0 0 0 1
    particle witch ^0.92376 ^ ^-2 0 0 0 0 1
    particle witch ^1.1547 ^ ^-2 0 0 0 0 1
    particle witch ^1.38564 ^ ^-2 0 0 0 0 1
    particle witch ^1.61658 ^ ^-2 0 0 0 0 1
    particle witch ^1.84752 ^ ^-2 0 0 0 0 1
    particle witch ^2.07846 ^ ^-2 0 0 0 0 1
    particle witch ^2.3094 ^ ^-2 0 0 0 0 1
    particle witch ^2.54034 ^ ^-2 0 0 0 0 1
    particle witch ^2.77128 ^ ^-2 0 0 0 0 1
    particle witch ^3.00222 ^ ^-2 0 0 0 0 1
    particle witch ^3.23316 ^ ^-2 0 0 0 0 1
# 最内円
    particle witch ^0 ^ ^-2 0 0 0 0 1
    particle witch ^0.20902 ^ ^-1.98877 0 0 0 0 1
    particle witch ^0.41572 ^ ^-1.95584 0 0 0 0 1
    particle witch ^0.61785 ^ ^-1.90156 0 0 0 0 1
    particle witch ^0.81323 ^ ^-1.82654 0 0 0 0 1
    particle witch ^0.99973 ^ ^-1.73159 0 0 0 0 1
    particle witch ^1.17535 ^ ^-1.61772 0 0 0 0 1
    particle witch ^1.33816 ^ ^-1.48618 0 0 0 0 1
    particle witch ^1.48618 ^ ^-1.33816 0 0 0 0 1
    particle witch ^1.61772 ^ ^-1.17535 0 0 0 0 1
    particle witch ^1.73159 ^ ^-0.99973 0 0 0 0 1
    particle witch ^1.82654 ^ ^-0.81323 0 0 0 0 1
    particle witch ^1.90156 ^ ^-0.61785 0 0 0 0 1
    particle witch ^1.95584 ^ ^-0.41572 0 0 0 0 1
    particle witch ^1.98877 ^ ^-0.20902 0 0 0 0 1
    particle witch ^2 ^ ^0 0 0 0 0 1
    particle witch ^1.98877 ^ ^0.20902 0 0 0 0 1
    particle witch ^1.95584 ^ ^0.41572 0 0 0 0 1
    particle witch ^1.90156 ^ ^0.61785 0 0 0 0 1
    particle witch ^1.82654 ^ ^0.81323 0 0 0 0 1
    particle witch ^1.73159 ^ ^0.99973 0 0 0 0 1
    particle witch ^1.61772 ^ ^1.17535 0 0 0 0 1
    particle witch ^1.48618 ^ ^1.33816 0 0 0 0 1
    particle witch ^1.33816 ^ ^1.48618 0 0 0 0 1
    particle witch ^1.17535 ^ ^1.61772 0 0 0 0 1
    particle witch ^0.99973 ^ ^1.73159 0 0 0 0 1
    particle witch ^0.81323 ^ ^1.82654 0 0 0 0 1
    particle witch ^0.61785 ^ ^1.90156 0 0 0 0 1
    particle witch ^0.41572 ^ ^1.95584 0 0 0 0 1
    particle witch ^0.20902 ^ ^1.98877 0 0 0 0 1
    particle witch ^0 ^ ^2 0 0 0 0 1
    particle witch ^-0.20902 ^ ^1.98877 0 0 0 0 1
    particle witch ^-0.41572 ^ ^1.95584 0 0 0 0 1
    particle witch ^-0.61785 ^ ^1.90156 0 0 0 0 1
    particle witch ^-0.81323 ^ ^1.82654 0 0 0 0 1
    particle witch ^-0.99973 ^ ^1.73159 0 0 0 0 1
    particle witch ^-1.17535 ^ ^1.61772 0 0 0 0 1
    particle witch ^-1.33816 ^ ^1.48618 0 0 0 0 1
    particle witch ^-1.48618 ^ ^1.33816 0 0 0 0 1
    particle witch ^-1.61772 ^ ^1.17535 0 0 0 0 1
    particle witch ^-1.73159 ^ ^0.99973 0 0 0 0 1
    particle witch ^-1.82654 ^ ^0.81323 0 0 0 0 1
    particle witch ^-1.90156 ^ ^0.61785 0 0 0 0 1
    particle witch ^-1.95584 ^ ^0.41572 0 0 0 0 1
    particle witch ^-1.98877 ^ ^0.20902 0 0 0 0 1
    particle witch ^-2 ^ ^0 0 0 0 0 1
    particle witch ^-1.98877 ^ ^-0.20902 0 0 0 0 1
    particle witch ^-1.95584 ^ ^-0.41572 0 0 0 0 1
    particle witch ^-1.90156 ^ ^-0.61785 0 0 0 0 1
    particle witch ^-1.82654 ^ ^-0.81323 0 0 0 0 1
    particle witch ^-1.73159 ^ ^-0.99973 0 0 0 0 1
    particle witch ^-1.61772 ^ ^-1.17535 0 0 0 0 1
    particle witch ^-1.48618 ^ ^-1.33816 0 0 0 0 1
    particle witch ^-1.33816 ^ ^-1.48618 0 0 0 0 1
    particle witch ^-1.17535 ^ ^-1.61772 0 0 0 0 1
    particle witch ^-0.99973 ^ ^-1.73159 0 0 0 0 1
    particle witch ^-0.81323 ^ ^-1.82654 0 0 0 0 1
    particle witch ^-0.61785 ^ ^-1.90156 0 0 0 0 1
    particle witch ^-0.41572 ^ ^-1.95584 0 0 0 0 1
    particle witch ^-0.20902 ^ ^-1.98877 0 0 0 0 1
