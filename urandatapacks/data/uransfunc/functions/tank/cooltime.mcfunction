title @s[scores={T1cooltime=61..80}] actionbar {"text":"\u88c5\u586b\u4e2d... \u25a1\u25a1\u25a1\u25a1","color":"dark_red"}
title @s[scores={T1cooltime=41..60}] actionbar {"text":"\u88c5\u586b\u4e2d... \u25a0\u25a1\u25a1\u25a1","color":"dark_red"}
title @s[scores={T1cooltime=21..40}] actionbar {"text":"\u88c5\u586b\u4e2d... \u25a0\u25a0\u25a1\u25a1","color":"dark_red"}
title @s[scores={T1cooltime=1..20}] actionbar {"text":"\u88c5\u586b\u4e2d... \u25a0\u25a0\u25a0\u25a1","color":"dark_red"}
scoreboard players remove @s[scores={T1cooltime=0..}] T1cooltime 1
title @s[scores={T1cooltime=..-1}] actionbar {"text":"\u88c5\u586b\u5b8c\u4e86","color":"dark_red"}
replaceitem entity @s[scores={T1cooltime=..-1}] hotbar.0 minecraft:spectral_arrow{HideFlags:33,display:{Name:"APFSDS"}} 1