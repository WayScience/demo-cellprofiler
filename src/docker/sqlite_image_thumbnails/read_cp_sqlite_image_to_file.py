"""
Reads image data from CellProfiler SQLite file
and exports result to output folder.
"""

import sqlite3
import argparse
from base64 import b64decode
from io import BytesIO
import pathlib
import PIL.Image as Image
import numpy as np


def extract_image_from_sqlite(db_path, column_name, output_folder):
    """Extract images from a SQLite database and save them to a specified folder.

    Args:
        db_path (str): Path to the SQLite database file.
        column_name (str): Name of the column containing the image data.
        output_folder (str): Directory to save the extracted images.

    Raises:
        IOError: If the image cannot be opened or saved.
    """
    # Connect to the SQLite database
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Query to select the column data
    query = f"SELECT {column_name} FROM Per_Image"
    cursor.execute(query)

    # Fetch all rows for the specified column
    rows = cursor.fetchall()

    # Create output folder if it doesn't exist
    pathlib.Path(output_folder).mkdir(exist_ok=True, parents=True)

    for idx, row in enumerate(rows):
        image_data = row[0]  # Assuming the image blob is in the first index

        # Check if image_data is a string and decode if necessary
        if isinstance(image_data, str):
            # referenced with modifications from:
            # https://forum.image.sc/t/how-to-read-image-thumbnails-from-sqlite-db/12928/2
            try:
                # If it's a base64 encoded string, decode it
                image_data = b64decode(image_data)
            except Exception as e:
                print(f"Error decoding base64 for image {idx}: {e}")
                continue  # Skip to the next image

        # Try to open the image
        try:
            image = Image.open(BytesIO(image_data))
        except IOError as e:
            print(f"Error opening image {idx}: {e}")
            continue  # Skip to the next image

        # Log image details
        print(f"Processing image {idx}: size {image.size}, mode {image.mode}")

        # Convert the image to a numpy array
        image_np = np.frombuffer(image.tobytes(), dtype="uint8")

        # Reshape based on image mode
        if image.mode == "RGB":
            image_np = image_np.reshape(
                (image.size[1], image.size[0], 3)
            )  # Height, Width, Channels
        elif image.mode == "L":  # Grayscale
            image_np = image_np.reshape((image.size[1], image.size[0]))  # Height, Width
        else:
            print(f"Unsupported image mode for image {idx}: {image.mode}")
            continue

        # Normalize if needed
        image_np = image_np.astype("float32") / 255

        # Save the image
        output_path = pathlib.Path(f"{output_folder}/image_{idx}.png")
        image.save(output_path, format="PNG")
        print(f"Saved image to {output_path}")

    conn.close()


if __name__ == "__main__":
    """Main entry point of the script to extract images from a SQLite database."""
    # Set up argument parser
    parser = argparse.ArgumentParser(
        description="Extract images from a SQLite database."
    )
    parser.add_argument("db_path", type=str, help="Path to the SQLite database file.")
    parser.add_argument(
        "column_name", type=str, help="Column name containing the image data."
    )
    parser.add_argument(
        "output_folder", type=str, help="Directory to save the extracted images."
    )

    # Parse the command line arguments
    args = parser.parse_args()

    # Call the function with the provided arguments
    extract_image_from_sqlite(args.db_path, args.column_name, args.output_folder)
