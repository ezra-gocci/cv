# Variables
SRC = source
TEMPLATE_DIR = templates
STATIC_DIR = website
OUTPUT_DIR = files
HTML_TEMPLATE = $(TEMPLATE_DIR)/template.html
MD_TEMPLATE = $(TEMPLATE_DIR)/template
PDF_TEMPLATE = $(TEMPLATE_DIR)/template.tex
PDF_OUTPUT = $(OUTPUT_DIR)/Ezra_Gonciarou_Senior_Software_Engineer
MD_OUTPUT = $(OUTPUT_DIR)/Ezra_Gonciarou_Senior_Software_Engineer.md
HTML_OUTPUT = index.html
CSS_FILE = ${STATIC_DIR}/main.css
JS_FILE = ${STATIC_DIR}/main.js
FONTS_DIR = fonts

# Default target
all: html pdf md

# Generate HTML
html: $(SRC).md $(HTML_TEMPLATE)
	pandoc $(SRC).md \
		--template=$(HTML_TEMPLATE) \
		--css=$(CSS_FILE) \
		--standalone \
		--output=$(HTML_OUTPUT)

# Generate PDF
pdf: $(SRC).md $(PDF_TEMPLATE)
	pandoc $(SRC).md \
		--template=$(PDF_TEMPLATE) \
		--pdf-engine=xelatex \
		--variable=mainfont:"$(FONTS_DIR)" \
		--output=$(PDF_OUTPUT).pdf
	pandoc $(SRC).md \
		--template=$(PDF_TEMPLATE) \
		--pdf-engine=xelatex \
		--variable=mainfont:"$(FONTS_DIR)" \
		--output=$(PDF_OUTPUT)_photo.pdf \
		--variable=photo:$(STATIC_DIR)/profile.jpeg

# Generate Markdown
md: $(SRC).md $(MD_TEMPLATE).md
	sed -E 's/\\textemoji\{([^\}]+)\}/\1/g' ${MD_TEMPLATE}.md > ${MD_TEMPLATE}_modified.md
	sed -E 's/\\\\headerpositionstyle\{([^\}]+)\}/**\1**/g' ${SRC}.md > ${SRC}_modified.md
	pandoc $(SRC)_modified.md \
		--template=$(MD_TEMPLATE)_modified.md \
		--output=$(MD_OUTPUT)
	rm -f $(MD_TEMPLATE)_modified.md
	rm -f $(SRC)_modified.md

# Clean generated files
clean:
	rm -f $(HTML_OUTPUT) $(PDF_OUTPUT).pdf $(PDF_OUTPUT)_photo.pdf $(MD_OUTPUT)

# Phony targets
.PHONY: all html pdf md clean
