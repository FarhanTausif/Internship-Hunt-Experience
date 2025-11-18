# Agent Flow: Converting PDFs to Markdown

This document outlines the step-by-step process followed to convert a directory of image-based PDF files into formatted markdown files, including handling OCR, text refinement, and automation.

## 1. Initial Analysis and Environment Setup

My first step was to understand the nature of the PDF files. I quickly realized they were not standard text-based PDFs but rather scans or images of documents. My initial attempts to extract text using standard Python libraries like `PyPDF2` and `pdfplumber` failed, returning no text.

This led me to the conclusion that an **Optical Character Recognition (OCR)** approach was necessary.

To prepare the environment, I installed the following essential command-line tools:
*   `poppler-utils`: A set of PDF utilities, specifically for `pdftoppm`, which is excellent for converting PDF pages into image files.
*   `tesseract-ocr`: A powerful open-source OCR engine to recognize and extract text from the generated images.

## 2. Creating the Automation Script

To handle multiple PDF files efficiently and keep the process repeatable, I created a bash script named `extract_text_from_pdf.sh`. This script served as the core of the automation workflow.

The script's logic is as follows:

1.  **Accept a PDF file** as an input argument.
2.  **Create a temporary directory** (`temp_images/`) to avoid cluttering the main workspace.
3.  **Convert PDF to Images**: Use `pdftoppm` to convert each page of the input PDF into a separate PNG image file, storing them in the temporary directory.
4.  **Perform OCR**: Iterate through each image file and use `tesseract` to "read" the text. The extracted text from all images is appended into a single file, `extracted_text.txt`.
5.  **Cleanup**: Remove the temporary directory containing the images.
6.  **Report Completion**: Print a message confirming that the text has been extracted.

## 3. Execution and Iteration

With the automation script in place, I followed a loop for each PDF in the `PDFs/` directory:

1.  Execute the `./extract_text_from_pdf.sh` script with the path to a PDF file.
2.  Read the raw, unstructured text from the output file (`extracted_text.txt`).

## 4. Text Refinement and Markdown Generation

The raw text from OCR is often imperfect and lacks formatting. As per the user's request, I performed a manual refinement step for the content of each PDF:

1.  **Language Translation**: I converted "Banglish" (a common mix of Bengali and English text) into clear, standard English.
2.  **Stylistic Improvements**: I rephrased sentences, corrected grammar, and improved the overall wording to ensure clarity and professionalism.
3.  **Formatting**: I structured the content using Markdown syntax, adding headers, bullet points, code blocks, and other elements to create a well-organized and readable document.
4.  **File Creation**: A new, clean `.md` file was created in the `markdown_files/` directory for each corresponding PDF.

## 5. Finalization and Cleanup

After converting all the PDF files, I ran a cleanup command to remove the temporary files used during the process.

Upon the user's request, the automation script (`extract_text_from_pdf.sh`) was restored and moved into an `Automation/` directory for future use.
