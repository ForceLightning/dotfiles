# LaTeX template files

Mostly a carbon copy of [Charlie's Maths Template](https://github.com/SeniorMars/dotfiles/tree/master/latex_template), which has code from the following sources:
1. https://github.com/tecosaur/BMC
2. https://github.com/lambdasolver/LaTeX

# Usage

Set up the following folder structure:
```bash
.
├── letterfonts.tex     # Single letter maths symbols.
├── macros.tex          # Maths operators.
├── preamble.tex        # Package imports and tcolorbox configuration.
|
├── dir_01              # Document directory 01
|   └── template.tex    # Template LaTeX file.
└── dir_02
    └── template.tex
```

> [!NOTE]
> Installation of LaTeX and related environments for package installation is expected.