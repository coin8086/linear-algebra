param (
  [Alias('f')]
  [string]
  $inputFile,

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

$inputFiles | ForEach-Object {
  $inputFileName = $_
  $baseName = Split-Path $inputFileName -LeafBase
  $outputFileName = "$baseName.pdf"

  $cmd = "docker run --rm -v '$($PSScriptRoot):/data' louirobert/pandoc /data/$srcDirName/$inputFileName -o /data/$outDirName/$outputFileName --pdf-engine=lualatex --top-level-division=chapter --metadata-file /data/style.yaml --resource-path /data/$srcDirName"

  if ($debug) {
    $cmd += " --verbose"
  }
  RunCmd $cmd
}
