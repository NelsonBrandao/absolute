## Absolute - A clean ZSH theme

Absolute is a [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) shell theme with a very clean look.

![screenshot](/images/screenshot.png?raw=true)

Features:
- Shows just the current directory
- Git branch
- Git status through icons
    - ◒ Untracked
    - ✚ Added
    - ✹ Modified
    - ✖ Deleted
    - ➜ Renamed
    - ⇡ Ahead remote
    - ⇣ Behind remote
- Battery percentage when needed ⚡ 81%
- NVM node version ‹ ⬢ 6.3.0 ›
- Last command exit code ↵

TODO:
- [ ] Background jobs

## Installation

### [Antigen](https://github.com/zsh-users/antigen)

If you are using the awesome antigen just run `antigen theme NelsonBrandao/absolute absolute` to try the theme out.

When ready add `antigen theme NelsonBrandao/absolute absolute` to your `.zshrc`.


Note: This theme requires [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) so make sure you have `antigen use oh-my-zsh` on your `.zhrc`.

### [oh-my-zsh](http://ohmyz.sh/)

Download or clone repository into `zsh_custom/themes`

Copy `absolute.zsh-theme` into `~/.oh-my-zsh/themes/absolute.zsh-theme`

Set `ZSH_THEME="absolute"` in your `.zshrc`
