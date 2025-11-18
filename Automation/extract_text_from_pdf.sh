#!/bin/bash

# This script converts a PDF to a series of images,
# then runs OCR on each image to extract text,
# and finally concatenates the text into a single file.

PDF_PATH="$1"
OUTPUT_DIR="temp_images"
FINAL_TEXT_FILE="extracted_text.txt"

# Create a temporary directory for images
mkdir -p "$OUTPUT_DIR"

# Convert PDF to images
pdftoppm -png "$PDF_PATH" "$OUTPUT_DIR/page"

# Run OCR on each image and append to a text file
> "$FINAL_TEXT_FILE" # Clear the file
for img in "$OUTPUT_DIR"/*.png; do
    tesseract "$img" stdout >> "$FINAL_TEXT_FILE"
done

# Clean up temporary images
rm -r "$OUTPUT_DIR"

echo "Text extracted to $FINAL_TEXT_FILE"
