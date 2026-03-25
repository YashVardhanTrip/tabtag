<p align="center">
    <img src="logo.svg?v=2" alt="tabtag logo" width="600">
</p>

<h3 align="center">Tag and color your terminal tabs. <br>Never lose a session again.</h3>

<p align="center">
    &nbsp;<a href="https://github.com/YashVardhanTrip/tabtag/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT"></a>&nbsp;
    &nbsp;<img src="https://img.shields.io/badge/Platform-macOS-lightgrey?logo=apple" alt="Platform: macOS">&nbsp;
    &nbsp;<img src="https://img.shields.io/badge/Terminal-iTerm2-green?logo=iterm2" alt="iTerm2">&nbsp;
    &nbsp;<img src="https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnubash&logoColor=white" alt="Bash">&nbsp;
</p>

<br>

---

You're running 6 terminal sessions — Claude Code, SSH tunnels, dev servers. Your tab bar?

```
...skip-permissions   ...skip-permissions   ...skip-permissions   ...skip-permissions   ...skip-permissions
```

**Good luck finding anything.**

`tabtag` gives every tab a **name** and a **color** so you always know where you are.

```bash
tabtag backend 1        # → Red tab named [backend]
tabtag AI-research 3    # → Green tab named [AI-research]
tabtag deploy 5         # → Purple tab named [deploy]
tabtag api 4            # → Blue tab named [api]
```

> [!TIP]
> Don't pick a color — `tabtag` hashes the name and auto-assigns one. Same name = same color, every time.

## Installation

```bash
curl -sSfL https://raw.githubusercontent.com/YashVardhanTrip/tabtag/main/install.sh | bash
```

<details>
<summary><b>Manual install</b></summary>

<br>

```bash
mkdir -p ~/.local/bin
curl -sL https://raw.githubusercontent.com/YashVardhanTrip/tabtag/main/tabtag -o ~/.local/bin/tabtag
chmod +x ~/.local/bin/tabtag
```

Make sure `~/.local/bin` is in your `PATH`.

</details>

## Usage

```bash
# tag a tab
tabtag api

# tag with a specific color
tabtag backend 1

# tag + set font size
tabtag recon 3 --font-size 14

# see all available colors
tabtag --list

# reset tab back to defaults
tabtag --reset
```

### Color Palette

| # | Color | # | Color | # | Color |
|:-:|:-----:|:-:|:-----:|:-:|:-----:|
| 1 | `Red` | 5 | `Purple` | 9 | `Teal` |
| 2 | `Yellow` | 6 | `Orange` | 10 | `Lavender` |
| 3 | `Green` | 7 | `Cyan` | | |
| 4 | `Blue` | 8 | `Pink` | | |

## Terminal Support

|               | iTerm2         | Terminal.app   |
|:--------------|:--------------:|:--------------:|
| Tab title     | Yes | Yes |
| **Tab color** | **Yes** | No |
| Font size     | Yes | Yes |

> [!NOTE]
> **iTerm2 is strongly recommended.** Terminal.app does not support tab coloring — Apple never built the API. Tab titles work on both.

## How It Works

- Auto-detects your terminal via `$TERM_PROGRAM` — no config needed
- **iTerm2** — proprietary escape codes for tab color, standard sequences for title
- **Terminal.app** — AppleScript for tab titles
- **Font size** — AppleScript on both terminals
- Zero dependencies. Single file. Pure bash.

## Requirements

- macOS
- Bash 3.2+ (ships with macOS)
- [iTerm2](https://iterm2.com/) recommended

## License

[MIT](LICENSE)
