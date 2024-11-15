Regex to find duplicate lines
^(.*)(\n\1)+$

Regex to find about on link blocks
(\[\s*.*\s+)(about)(\s+.*\s*\])

Regex to overwrite the about
$1sobre$3