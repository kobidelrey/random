# SF Symbols Icons — PNG Export

Exported from **SF Symbols 27.0 (build 140)** via the bundled CLI:

```
/Users/kobievans/Applications/SF Symbols.app/Contents/Executables/sfsymbols
```

- **Count:** 7207 symbols
- **Format:** PNG (default render: weight `regular`, point-size `100`, symbol-scale `medium`, rendering `automatic`, color `label`)
- **Files:** `icons/<symbol-name>.png`
- **Catalog:** `symbols.txt` (plain list), `symbols.json` (names + availability + codepoints, from `sfsymbols search --json`)

## Re-export

Single icon:

```bash
"/Users/kobievans/Applications/SF Symbols.app/Contents/Executables/sfsymbols" export "heart.fill" \
  --format png --output "icons/heart.fill.png"
```

All icons (parallel, ~70-80 min on 6-core):

```bash
./export_all.sh
# or: cat symbols.txt | xargs -P 6 -I {} sfsymbols export {} --format png --output "icons/{}.png"
```

Other formats:

```bash
sfsymbols export "<name>" --format svg --output "icons/<name>.svg"
sfsymbols export "<name>" --format pdf --output "icons/<name>.pdf"
```

## Notes

- SVG is Apple's editable design template; PNG/PDF are renderings.
- Symbol names use dots (e.g. `square.and.arrow.up.fill.png`) — safe on macOS/git.
- Source: Apple SF Symbols. Check Apple's license before redistributing.
