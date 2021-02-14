# firestore-emulator-action

Github action for docker image [*ridedott/firestore-emulator-docker*](https://github.com/ridedott/firestore-emulator-docker)

## Required Environment Variables
**PORT**: Host port of firestore emulator start-up

## Example

```
name: Firestore Emulator

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Start Firestore
      uses: gbvice/firestore-emulator-action@main
      with:
        port: 8001
```
