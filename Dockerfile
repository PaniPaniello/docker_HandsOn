# Teeny-tiny matplotlib image based on alpine
FROM czentye/matplotlib-minimal:3.1.2

LABEL author="Phil Ewels" \
      description="MultiQC" \
      maintainer="phil.ewels@scilifelab.se"

RUN apk add --no-cache bash

# Install MultiQC
RUN pip install --upgrade pip
RUN pip install multiqc

# Set up entrypoint and cmd for easy docker usage
ENTRYPOINT [ "multiqc" ]
