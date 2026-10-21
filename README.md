# homebrew-tap

The Homebrew tap for [browserscale](https://browserscale.cloud). Add it once, then install anything published here by name:

```bash
brew tap browserscale/tap
brew install browserscale
```

Or in one line, without adding the tap first: `brew install browserscale/tap/browserscale`.

## Packages

| Package | What it is | Source |
| --- | --- | --- |
| `browserscale` | browserscale studio, where you build browser automations by chatting with an agent, and its command. `browserscale` opens Studio; `browserscale help` lists the commands. Update with `brew upgrade browserscale`. macOS only for now. | [browserscale/browserscale](https://github.com/browserscale/browserscale) |

More can live here as they appear — a tap holds any number of packages, formulae and casks side by side, each installed by its own name.

## Why the repository is named this way

`brew tap browserscale/tap` is expanded by convention: GitHub is Homebrew's default host and the `homebrew-` prefix is implied, so the short form only resolves as long as this repository is called exactly `homebrew-tap` and lives in the `browserscale` organisation.

## About the contents

Everything under `Casks/` and `Formula/` is generated and committed by the release pipeline of the source repository listed above. Don't edit those files by hand — the next release overwrites them. Bugs, feature requests and questions about a package belong on its source repository, not here.

Where a package also ships through npm, that route works on Windows and Linux too, with the same programs and commands. See the package's own README.

## License

The files here are generated. Each package is licensed in its source repository.
