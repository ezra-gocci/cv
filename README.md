### Directory Structure and Usage

- `README.md`: this file
- `source.md`: structured content in yaml format
- `index.html`: generated root html file
- `Makefile`: build html and pdf

1. **Templates Directory (`templates/`)**
   - `template.html`: HTML template.
   - `template.md`: Markdown template.
   - `awesome_cv.tex`: Main LaTeX template for PDF.
   - `awesome/`: Additional LaTeX templates included by `awesome_cv.tex`.

2. **Output Directory (`files/`)**
   - `cv.pdf`: Generated PDF.
   - `cv.md`: Generated Markdown.

3. **Static Website Directory (`website/`)**
   - `main.css`: Styles for HTML output.
   - `main.js`: Scripts for HTML output.

4. **Fonts Directory (`fonts/`)**
   - Contains custom fonts used for PDF generation.

---

### Usage

Run the following commands:

1. **`all`**  
   The default target, builds all outputs (HTML, PDF, and Markdown).

**Build all outputs:**  
  ```bash
  make
  ```

2. **`html`**  
   Converts the YAML source to an HTML file using the specified template and adds the CSS file.

**Build only HTML:**  
  ```bash
  make html
  ```

3. **`pdf`**  
   Converts the YAML source to a PDF file using the LaTeX template and fonts from the specified directory.

- **Build only PDF:**  
  ```bash
  make pdf
  ```

4. **`md`**  
   Converts the YAML source to a Markdown file using the specified Markdown template.

  - **Build only Markdown:**  
  ```bash
  make md
  ```

5. **`clean`**  
   Removes all generated files (HTML, PDF, and Markdown).

  - **Clean outputs:**  
  ```bash
  make clean
  ```

# CV Checklist

## General Recommendations
- The CV is tailored for a specific job search direction.
- The CV is free of spelling and grammatical errors.
- The file name includes your last name, first name, and the job title.
- File format: PDF.
- No use of templates with "fancy" designs.
- The CV is up to three pages long.
- The language of the CV matches the language of the target market.
- The text is written in a single font size (except for headings).
- No colored text highlights are used.
- No more than 1–2 fonts are used.

## Contact Information
- The CV contains your current and accurate details.
- Includes a photograph:
  - The photo is of high quality and not pixelated.
  - The photo includes only you.
  - The photo is taken face-on.
  - You have a calm and friendly expression in the photo.
- Includes a phone number.
- Includes an email address:
  - The email address sounds professional.
- Includes a messenger link.
- Includes a link to a portfolio/LinkedIn/GitHub:
  - The portfolio/LinkedIn/GitHub does not contain content that could reflect poorly on you.
- The work format aligns with the job requirements.
- The contact methods allow for communication via the same channel the recruiter used to receive the CV.
- Links to contacts are clickable and functional.
- A summary is included.

## Job Title and Salary
- The desired position is listed as a single title.
- The job title matches the title in the job posting.
- The desired salary aligned with the current market standards for this role is specified when requested by employer or when it provides a strategic advantage.

## Work Experience
- The position at your last job matches the job title in the vacancy.
- Experience is listed in chronological order.
- Work periods are specified to the month.
- The focus is on the last 5–7 years of experience.
- Achievements are clearly described:
  - Only results are mentioned in achievements.
  - No vague phrases are used in the descriptions.
  - The list of responsibilities positions you positively.
  - Descriptions of achievements follow a consistent logic.
  - Achievements are separated from operational tasks into distinct blocks.
  - Achievements and tasks are presented as bullet points.
  - Achievements are described using formulas like XYZ or STAR.
  - Achievements include numbers.
  - Achievements include concrete facts.
  - Perfect verbs are used in achievements: achieved, improved, grew, accelerated, etc.
  - Achievements are listed in descending order of business value.
  - At least one-third of your achievements align with the job requirements.
  - Tasks are described in simple language without complex terminology.
  - Irrelevant experience occupies no more than one-third of the total or is rephrased to fit the vacancy.
  - Experience over 10 years old is removed from the CV.
  - Experience of less than a year is either hidden or expanded to a year.
  - Career progression within a single company is easy to understand.
  - Each company includes a short introduction.
  - The website of each company is provided.
  - There are no gaps in the career timeline longer than one year.
  - The achievements and responsibilities section avoids bureaucratic language.

## Education
- Completed education is listed.
- If courses are mentioned, limit them to 2–3 entries.

## Skills
- The list of skills matches at least two-thirds of the job requirements.
- Obvious skills like PC/Word/Excel proficiency are omitted.
- Skills are listed in descending order of importance for the position.
- Skills are described in simple language without complex terminology.
- Skills are described in a consistent format.
- The list of skills is not too long.
- The list of skills is not too short.
- The list of skills does not contain duplicated entries.
- The list of skills is not too generic.
- The list of skills is not too specific.