# --- Clean old local copies ---
Remove-Item -Recurse -Force Core -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force Worlds -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force Assets -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force Optional -ErrorAction SilentlyContinue

# --- Create base directories ---
New-Item -ItemType Directory -Force Core | Out-Null
New-Item -ItemType Directory -Force Assets | Out-Null
New-Item -ItemType Directory -Force Optional | Out-Null

# --- Define source root ---
$sourceRoot = "C:\Users\KaxuTheSheep\Documents\Obsidian\obsidian_ttrpg"

# --- Copy Core and Assets ---
Copy-Item -Recurse "$sourceRoot\Core\*" Core\
Copy-Item -Recurse "$sourceRoot\Assets\*" Assets\
Copy-Item -Recurse "$sourceRoot\Optional\*" Optional\

# --- Copy all world Player folders dynamically ---
$worldsSource = Join-Path $sourceRoot "Worlds"
if (Test-Path $worldsSource) {
    Get-ChildItem -Path $worldsSource -Directory | ForEach-Object {
        $worldName = $_.Name
        $playerSrc = Join-Path $_.FullName "Player"
        if (Test-Path $playerSrc) {
            $destWorld = Join-Path "Worlds" $worldName
            New-Item -ItemType Directory -Force $destWorld | Out-Null
            Copy-Item -Recurse "$playerSrc\*" $destWorld\
            Write-Host "Copied world: $worldName"
        }
    }
}

# --- Git operations ---
git add .
git commit -m "SCREW YOUR COMMIT o(〃＾▽＾〃)o"
git push
