
Remove-Item -Recurse -Force Core -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force Settings -ErrorAction SilentlyContinue

New-Item -ItemType Directory -Force Core | Out-Null
New-Item -ItemType Directory -Force Settings\Cyberpunk | Out-Null
New-Item -ItemType Directory -Force Settings\Solasfall | Out-Null

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Core\*" `
Core\

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Settings\Cyberpunk\Player\*" `
Settings\Cyberpunk\

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Settings\Solasfall\Player\*" `
Settings\Solasfall\
