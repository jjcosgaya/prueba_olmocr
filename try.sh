# Download a sample PDF
curl -o olmocr-sample.pdf https://olmocr.allenai.org/papers/olmocr_3pg_sample.pdf

# Convert it to markdown
uv run olmocr.pipeline ./localworkspace --markdown --pdfs olmocr-sample.pdf
