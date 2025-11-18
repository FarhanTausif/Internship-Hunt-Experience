# Refined Prompt for PDF to Markdown Conversion

This document outlines a refined prompt that captures the full scope of the task, including the necessary steps and implicit requirements that were discovered during the process.

### **Objective**

The primary goal is to convert a collection of PDF documents, which are image-based scans of interview experiences, into well-structured and refined Markdown files. The process must be automated to handle multiple files efficiently.

### **Initial Request & Constraints**

"I have a folder of PDFs containing interview experiences. I want to create a Markdown file for each one.

1.  Read the content from each PDF.
2.  Create a corresponding Markdown file.
3.  **Refinement Rule 1:** If you encounter "Banglish" (a mix of Bengali and English), translate it into clear, simple English.
4.  **Refinement Rule 2:** Improve the overall wording, style, and formatting to make the content more professional and readable."

### **Discovered Technical Requirements (The "How-To")**

*   **Problem:** The PDFs are not text-based; they are images of text. Standard text extraction methods will fail.
*   **Solution:** You must use an **Optical Character Recognition (OCR)** workflow.

#### **Step-by-Step Refined Prompt:**

1.  **Environment Setup:**
    *   First, ensure the necessary OCR tools are installed. You will need `tesseract-ocr` for text recognition and `poppler-utils` (specifically the `pdftoppm` command) to convert PDF pages into images that Tesseract can process.

2.  **Create an Automation Script:**
    *   To handle the conversion for multiple files, create a reusable bash script (`extract_text_from_pdf.sh`).
    *   This script must perform the following actions:
        1.  Accept a PDF file path as an argument.
        2.  Convert each page of the PDF into a temporary image file (e.g., PNG).
        3.  Run `tesseract` on each image to extract the text.
        4.  Append the text from all pages into a single output file (e.g., `extracted_text.txt`).
        5.  Clean up the temporary image files after extraction.

3.  **Iterate and Process Each PDF:**
    *   For each PDF file in the `PDFs/` directory:
        1.  Execute the automation script on the file.
        2.  Read the raw text from the script's output file.
        3.  **Apply the Refinement Rules:**
            *   Carefully read through the raw text.
            *   Translate any Banglish phrases into standard English.
            *   Restructure sentences, fix grammatical errors, and improve clarity.
            *   Format the refined text using Markdown (e.g., use `#` for headers, `*` for lists, and backticks for code).
        4.  Create a new Markdown file (e.g., `[Original_PDF_Name].md`) in a `markdown_files/` directory and save the refined, formatted content.

4.  **Final Housekeeping:**
    *   After all PDFs are converted, delete any temporary files (like `extracted_text.txt`).
    *   Place the automation script into a dedicated `Automation/` folder for future use.
    *   Create a final `AGENT_FLOW.md` file documenting the exact steps you took to accomplish the task.
