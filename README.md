# Homebrew Tap

Precompiled macOS applications from [dendenxu](https://github.com/dendenxu).

## Math Peek

Hover over LaTeX in a terminal to preview the rendered formula.

```sh
brew install --cask dendenxu/tap/math-peek
open -a "Math Peek"
```

If Homebrew reports an untrusted tap, trust this cask and retry installation:

```sh
brew trust --cask dendenxu/tap/math-peek
```

Includes the standalone menu-bar app and the `math-peek` command. Supports Apple
Silicon and Intel Macs on macOS 13 or newer. No Python or Swift compiler is needed.
Native hover uses Accessibility text and character positions; no OCR is used.

See the [Math Peek README](https://github.com/dendenxu/math-peek) for permissions,
terminal compatibility, and first-launch instructions. The current release is
ad-hoc signed and has not been notarized by Apple.

Quit Math Peek before upgrading:

```sh
brew upgrade --cask dendenxu/tap/math-peek
```
