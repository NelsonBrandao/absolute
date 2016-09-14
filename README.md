## Absolute - A clean ZSH theme

Absolute is a [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) shell theme with a very clean look.

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

## License
The MIT License (MIT)

Copyright (c) 2016 [NelsonBrandao](https://github.com/NelsonBrandao)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
