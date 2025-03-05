FROM ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest

# Set environment variables to fix display issues
ENV DISPLAY=:1
ENV NO_AT_BRIDGE=1
ENV WEBKIT_DISABLE_COMPOSITING_MODE=1

# Expose necessary ports
EXPOSE 5900 8501 6080 8080

# Default command
CMD ["bash"]