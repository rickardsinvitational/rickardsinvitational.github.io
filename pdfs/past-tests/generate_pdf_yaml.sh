#!/bin/bash

# Define the base directory where your PDFs are stored
base_dir="."

# Output file
output_file="pdf_files.yml"

# Start the YAML file
echo "# Auto-generated list of PDF files" > "$output_file"

# Loop through each year's directory
for year_dir in "$base_dir"/*; do
  # Extract the year (directory name)
  year=$(basename "$year_dir")

  # Start a new section in the YAML file for this year
  echo "$year:" >> "$output_file"

  # Loop through each PDF in the year directory
  for pdf_file in "$year_dir"/*.pdf; do
    # Extract the PDF filename
    pdf_name=$(basename "$pdf_file")

    # Add an entry for this PDF
    echo "  - name: \"${pdf_name%.pdf}\"" >> "$output_file"
    echo "    file: \"$pdf_name\"" >> "$output_file"
  done

  # Add a blank line after each year section
  echo "" >> "$output_file"
done

echo "YAML file generated at $output_file"
