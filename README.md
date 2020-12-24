# node10-builder

NodeJS v10 builder container. Mount your repository to the `/workspace` directory and override the entrypoint with each command you want to run.

Best practice is to include a build script in the repository and use that as the entrypoint.

## How to Use
```
#!/bin/bash
workspace=$(pwd)
echo "Using ${workspace} as workspace"
docker run -v ${workspace}:/workspace --entrypoint "/workspace/scripts/build.sh" node10-builder:v1 "123"
```
