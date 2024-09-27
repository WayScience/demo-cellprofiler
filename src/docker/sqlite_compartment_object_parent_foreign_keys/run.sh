#!/bin/bash
# build and run cellprofiler from a docker container
CPDOCKER_RUNDIR=$PWD/src/docker/sqlite_foreign_keys
CPDOCKER_IMAGE_NAME=cp-sqlite-fk

# build image
docker build --platform linux/amd64 -t "$CPDOCKER_IMAGE_NAME" -f "$CPDOCKER_RUNDIR/Dockerfile" .

# show the CellProfiler version and use run as a quick test
echo "CellProfiler version:"
docker run --rm --platform linux/amd64 -w /app \
    -v "$CPDOCKER_RUNDIR:/app" \
    "$CPDOCKER_IMAGE_NAME" \
    --version

if [ ! -e "$CPDOCKER_RUNDIR/ExampleHuman.zip" ]; then
    # get example data
    wget -O "$CPDOCKER_RUNDIR/ExampleHuman.zip" \
        https://cellprofiler-examples.s3.amazonaws.com/ExampleHuman.zip
    unzip "$CPDOCKER_RUNDIR/ExampleHuman.zip" -d "$CPDOCKER_RUNDIR"
fi

# run cellprofiler with the examplehuman dataset from:
# https://cellprofiler.org/examples
docker run --rm --platform linux/amd64 -w /app \
    -v "$CPDOCKER_RUNDIR:/app" \
    "$CPDOCKER_IMAGE_NAME" \
    cellprofiler -c -r -p ExampleHuman_exporttodatabase.cppipe -o output -i ExampleHuman/images
