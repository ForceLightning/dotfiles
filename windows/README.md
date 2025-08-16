# Windows dotfiles

# Preview
![WezTerm (nushell) preview](/images/WezTerm.png)
![Terminal (Powershell) preview](/images/powershell.png)

# Requirements
- Font: [FiraCode](https://github.com/tonsky/FiraCode)
- WezTerm

## Packages
Follow the installation procedures for each.
> [!NOTE]
> Make sure to copy the powershell/nushell profiles first (if desired) as some of these tools will modify the profile itself.
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [FFmpeg](https://ffmpeg.org/ffmpeg.html)
- [Oh My Posh](https://ohmyposh.dev/)
- [Starship](https://starship.rs/)
- [Komorebi](https://github.com/LGUG2Z/komorebi) + [whkd](https://github.com/LGUG2Z/whkd)

# Installation
## Nushell profile
- Check files in the [nushell directory](../nushell/) of the repository.
- Check the environment variable `$nu.default-config-dir` and copy in `config.nu` and `ffmpeg.nu` to that directory.
- Follow the instructions of initialising `zoxide` and save the output to `~/.config/nu/config.toml`.

## WezTerm
- Copy [.wezterm.lua](./.wezterm.lua) to the `~/` directory.
- Update configuration variables as necessary.

## Komorebi w/ whkd
- Copy [komorebi.json](./komorebi.json) and [komorebi.bar.json](./komorebi.bar.json) to the `~/` directory.
- Copy [whkdrc](./whkdrc) to the `~/.config` directory
- Customise the config files as necessary, based on your monitor setup.
- Launch komorebi with `komorebic start --whkd --bar`
- Setup autostart with `komorebic enable-autostart --whkd --bar`

## Powershell profile
- Copy into `%USERPROFILE%\Documents\Powershell\`
> [!NOTE] 
> The packages above may require installation **after** copying the powershell profile.

### Terminal Nord theme
- Include the contents of `nord_theme.json` inside the `settings.json` file for the Windows Terminal.

### Oh My Posh theme
- Run:
```
oh-my-posh init pwsh --config pwsh10k.omp.json | Invoke-Expression
```

