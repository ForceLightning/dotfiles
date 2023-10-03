# Windows dotfiles

# Preview
![Terminal preview](/images/powershell.png)

# Requirements
- Font: [Liga Sauce Code Pro Nerd Font Complete Edition](https://github.com/Bo-Fone/Liga-Sauce-Code-Pro-Nerd-Font)
- Windows Terminal (the new one).

## Packages
Follow the installation procedures for each.
> [!NOTE]
> Make sure to copy the powershell profile first (if desired) as some of these tools will modify the profile itself.
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [FFmpeg](https://ffmpeg.org/ffmpeg.html)
- [Oh My Posh](https://ohmyposh.dev/)

# Installation
## Powershell profile
- Copy into `%USERPROFILE%\Documents\Powershell\`
> [!NOTE] 
> The packages above may require installation **after** copying the powershell profile.

## Terminal Nord theme
- Include the contents of `nord_theme.json` inside the `settings.json` file for the Windows Terminal.

## Oh My Posh theme
- Run:
```
oh-my-posh init pwsh --config pwsh10k.omp.json | Invoke-Expression
```

