# jruby-cli-for-win-boilerplate

## Usage

1. Download this repository.
2. Download jruby-complete-X.X.X.X.jar into `vendor/`.
3. Change jruby-complete-X.X.X.X.jar version to your downloaded in `vendor/jruby.bat`.
4. Install Bundler into `vendor/gem_home` with the following command.
   ```bat
   vendor/jruby.bat -S gem install -i vendor/gem_home --no-document bundler
   ```
5. Install gems by Bundler with the following command.
   ```bat
   vendor/bundle.bat install --path vendor/bundle --binstubs .bundle/bin
   ```
6. After that, implement a CLI application as you like.

## Tips

### Package and Ignore

Packaging the gems puts them into vendor/cache and means that you can bundle install without having to access rubygems.org.

```bat
vendor/bundle.bat package
```
