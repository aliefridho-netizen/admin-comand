# Admin Command Loader

A minimal Lua loader for an externally hosted admin-command script.

## Loader URL

`https://raw.githubusercontent.com/aliefridho-netizen/admin-comand/main/loader.lua`

## Usage

For an authorized test environment that supports `game:HttpGet` and `loadstring`:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/aliefridho-netizen/admin-comand/main/loader.lua"))()
```

## Notes

- The rscripts telemetry block from the original snippet was removed.
- The external admin-command source URL is retained unchanged.
- Download, compilation, and execution errors are caught and reported with `warn`.
- The remote admin-command script is not copied into this repository or audited here. Review its source before running it.
- Use only in experiences you own or are explicitly authorized to administer.
- Standard Roblox clients do not generally permit arbitrary client-side `loadstring` execution.
