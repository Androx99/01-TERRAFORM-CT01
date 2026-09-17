param (
    [Parameter(Mandatory=$false)]
    [string]$Mensaje = "actualizacion de ejercicios"
)

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " Subiendo cambios a GitHub               " -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan

# 1. Agregar cambios respetando .gitignore
git add .

# 2. Verificar si hay cambios para commitear
$status = git status --porcelain
if (-not $status) {
    Write-Host "No hay cambios nuevos para subir." -ForegroundColor Yellow
    exit 0
}

# 3. Crear el commit
Write-Host "Creando commit: '$Mensaje'..." -ForegroundColor Green
git commit -m "$Mensaje"

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error al crear el commit." -ForegroundColor Red
    exit $LASTEXITCODE
}

# 4. Subir a GitHub
Write-Host "Subiendo a GitHub (git push)..." -ForegroundColor Green
git push

if ($LASTEXITCODE -eq 0) {
    Write-Host "=========================================" -ForegroundColor Green
    Write-Host " Todo subido con exito a GitHub!         " -ForegroundColor Green
    Write-Host "=========================================" -ForegroundColor Green
} else {
    Write-Host "Error al subir a GitHub." -ForegroundColor Red
}
