#!/bin/bash
# build and run cellprofiler from a docker container
CPDOCKER_RUNDIR=$PWD/src/docker/sqlite_compartment_object_parent_foreign_keys
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

# set source and target databases
SOURCE_DB="$CPDOCKER_RUNDIR/output/ExampleHuman.sqlite"
TARGET_DB="$CPDOCKER_RUNDIR/ExampleHuman_modified.sqlite"

# remove the targetdb to get a clean database
rm -f "$TARGET_DB"

# perform copies from the source to target databases using new schema
sqlite3 "$TARGET_DB" <<EOF
ATTACH DATABASE '$SOURCE_DB' AS source;
.read $CPDOCKER_RUNDIR/examplehuman_modified.sql
INSERT INTO Per_Image SELECT * FROM source.Per_Image;
INSERT INTO Per_Cells SELECT * FROM source.Per_Cells;
INSERT INTO Per_Nuclei SELECT * FROM source.Per_Nuclei;
INSERT INTO Per_Cytoplasm SELECT * FROM source.Per_Cytoplasm;
INSERT INTO Per_PH3 SELECT * FROM source.Per_PH3;
INSERT INTO Experiment_Properties SELECT * FROM source.Experiment_Properties;
INSERT INTO Per_Experiment SELECT * FROM source.Per_Experiment;
INSERT INTO Per_RelationshipTypes SELECT * FROM source.Per_RelationshipTypes;
INSERT INTO Per_Relationships SELECT * FROM source.Per_Relationships;
VACUUM;
EOF
