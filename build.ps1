param (
  [Alias('f')]
  [string]
  $inputFile,

  [Alias('n')]
  [string]
  $bookName = 'linear-algebra',

  [Alias('d')]
  [switch]
  $debug,

  [Alias('c')]
  [switch]
  $clean,

  [Alias('l')]
  [switch]
  $lintOnly
)

$ErrorActionPreference = 'Stop'
$InformationPreference = 'Continue'

$srcDirName = 'src'
$outDirName = 'out'
$srcDir = Join-Path $PSScriptRoot $srcDirName -Resolve
$outDir = Join-Path $PSScriptRoot $outDirName

function CleanOutDir {
  if ($clean) {
    "Cleaning $outDir ..." | Out-Default
    Remove-Item -Recurse -Force $outDir
  }
}

function CreateOutDir {
  "Creating $outDir if it does not exist ..." | Out-Default
  New-Item -Force -ItemType Directory $outDir
}

function RunCmd {
  param(
    $cmd
  )

  $cmd | Out-Default
  Invoke-Expression $cmd
  if ($LASTEXITCODE) {
    exit $LASTEXITCODE
  }
}

if ($clean) {
  CleanOutDir
}

if ($inputFile) {
  $inputFiles = @(Split-Path $inputFile -Leaf)
}
else {
  $inputFiles = Join-Path $srcDir '*.md' -Resolve | ForEach-Object {
    Split-Path $_ -Leaf
  }
}

CreateOutDir

$filesInContainer = $inputFiles | ForEach-Object {
  "'/data/$srcDirName/$_'"
}
$fileArgs = $filesInContainer -join ' '

if ($inputFiles.Length -gt 1) {
  $outFileName = $bookName
}
else {
  $outFileName = $inputFiles[0].Split('.')[0]
}

$cmd = "docker run --rm -v '$($PSScriptRoot):/data' louirobert/pandoc $fileArgs -o '/data/$outDirName/$outFileName.pdf' --toc --pdf-engine=lualatex --top-level-division=chapter --metadata-file /data/style.yaml --resource-path /data/$srcDirName --include-before-body=/data/$srcDirName/cover.tex"

if ($debug) {
  $cmd += " --verbose"
}

RunCmd $cmd
