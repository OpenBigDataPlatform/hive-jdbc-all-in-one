After much exploration it seems the very best option is to add objects to releases.
I will do 1 release per tag.

See: https://github.com/actions/upload-release-asset
```yaml
on:
  push:
    # Sequence of patterns matched against refs/tags
    tags:
    - 'v*' # Push events to matching v*, i.e. v1.0, v20.15.10

name: Upload Release Asset

on:
  release:
    types: [created]

jobs:
  build:
    name: Build release binary
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Get release
        id: get_release
        uses: bruceadams/get-release@v1.2.2
        env:
          GITHUB_TOKEN: ${{ github.token }}

      - name: Build binary
        run: cargo build --release --verbose

      - name: Upload release binary
        uses: actions/upload-release-asset@v1.0.2
        env:
          GITHUB_TOKEN: ${{ github.token }}
        with:
          upload_url: ${{ steps.get_release.outputs.upload_url }}
          asset_path: ./target/release/my-widget
          asset_name: my-widget
          asset_content_type: application/octet-stream
```