
Remove-Item -Recurse -Force Core -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force Worlds -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force Assets -ErrorAction SilentlyContinue

New-Item -ItemType Directory -Force Core | Out-Null
New-Item -ItemType Directory -Force Worlds\Cyberpunk | Out-Null
New-Item -ItemType Directory -Force Worlds\Solasfall | Out-Null
New-Item -ItemType Directory -Force Worlds\Space | Out-Null
New-Item -ItemType Directory -Force Assets | Out-Null

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Core\*" `
Core\

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Assets\*" `
Assets\

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Worlds\Cyberpunk\Player\*" `
Worlds\Cyberpunk\

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Worlds\Solasfall\Player\*" `
Worlds\Solasfall\

Copy-Item -Recurse `
"C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg\Worlds\Space\Player\*" `
Worlds\Space\


git add .
git commit -m "SCREW YOUR COMMIT"
git push
