#!/bin/bash
# build and run cellprofiler from a docker container

# interrupt execution on error
set -e

# create variables for use below
CPDOCKER_RUNDIR=$PWD/src/docker/sqlite_image_thumbnails
CPDOCKER_IMAGE_NAME=cp-sqlite-thumbnails

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
    cellprofiler -c -r -p ExampleHuman_exporttodatabase_thumbnails.cppipe -o output -i ExampleHuman/images

# export sqlite schemas (table structure) without thumbnails
sqlite3 "$PWD/src/docker/sqlite_compartment_object_parent_foreign_keys/output/ExampleHuman.sqlite" .schema \
     > "$CPDOCKER_RUNDIR/without_thumbnails_schema.sql"
sqlite3 "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" .schema \
    > "$CPDOCKER_RUNDIR/with_thumbnails_schema.sql"

# show the difference between the schema files to determine where thumbnails are
diff -u "$CPDOCKER_RUNDIR/without_thumbnails_schema.sql" "$CPDOCKER_RUNDIR/with_thumbnails_schema.sql" \
    > "$CPDOCKER_RUNDIR/thumbnail_schema_diff.diff"

# export the long blobs to standalone images outside the database for understanding
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_DNA \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_DNA"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_MaskDNACells \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_MaskDNACells"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_MaskDNACytoplasm \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_MaskDNACytoplasm"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_MaskDNANuclei \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_MaskDNANuclei"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_MaskDNAPH3 \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_MaskDNAPH3"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_OrigOverlay \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_OrigOverlay"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_PH3 \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_PH3"
python "$CPDOCKER_RUNDIR/read_cp_sqlite_image_to_file.py" \
    "$PWD/src/docker/sqlite_image_thumbnails/output/ExampleHuman_thumbnails.sqlite" \
    Image_Thumbnail_cellbody \
    "$CPDOCKER_RUNDIR/output/Image_Thumbnail_cellbody"
