Param(
    [String] $ExtensionsFilePath = 'vscode-extensions.txt'
)

Get-Content -Path $ExtensionsFilePath -Encoding utf8 | ForEach-Object {
    code --install-extension $_
}
