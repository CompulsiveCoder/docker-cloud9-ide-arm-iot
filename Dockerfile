
FROM hwegge2/rpi-cloud9-ide

# ------------------------------------------------------------------------------
# Install dependencies
# RUN apt-get update && sudo apt-get upgrade

RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    mono-complete \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"

# ------------------------------------------------------------------------------
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ------------------------------------------------------------------------------
# Expose ports.
EXPOSE 8181
EXPOSE 3000
