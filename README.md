# SourceryDemo

This is demo project for iOS Pintar sharing session. There's `.sourcery.yml` configuration files on the root of the folder that describe where's the template location as well as where generated code should be located.

`.sourcery.yml` contains 2 configuration to demonstrate generating `Codable` code and `AutoCasePath`.

To generate using Sourcery, run:
`sourcery --config .sourcery.yml`

If you want to try writing template to use with Sourcery, you can use -w flag to set autogenerate code, run:
`sourcery --config .sourcery.yml -w`

## Resources
- Sourcery Github: [https://github.com/krzysztofzablocki/Sourcery](https://github.com/krzysztofzablocki/Sourcery)
- [Sourcery Pro](https://merowing.info/sourcery-pro/)