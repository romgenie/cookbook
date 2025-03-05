# Claude Helper Reference

## Commands

### Docker
```bash
# Run with API key in .env file (RECOMMENDED - SECURE METHOD)
# Create a .env file with ANTHROPIC_API_KEY=your-api-key
docker run --env-file .env \
  -v $HOME/.anthropic:/home/computeruse/.anthropic \
  -p 5900:5900 -p 8501:8501 -p 6080:6080 -p 8080:8080 \
  -it ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest

# Run with API key from environment (use only in secure environments)
# Export the key in your terminal first: export ANTHROPIC_API_KEY=your-api-key
docker run -e ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY \
  -v $HOME/.anthropic:/home/computeruse/.anthropic \
  -p 5900:5900 -p 8501:8501 -p 6080:6080 -p 8080:8080 \
  -it ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest
```

### Build & Run
```bash
# Build the Docker image locally
docker build -t anthropic-computer-use .

# Run tests (when implemented)
# docker run anthropic-computer-use pytest

# Linting (when implemented)
# docker run anthropic-computer-use flake8
```

## Code Style Guidelines

- **Security**: NEVER expose API keys in code or commit them to version control. Use environment variables or .env files.
- **Docker**: Use multi-line formatting with proper indentation for Docker commands and Dockerfiles.
- **Formatting**: Use 2-space indentation for YAML/Dockerfile, 4-space for Python/other code.
- **Comments**: Add comments for configuration decisions or complex operations.
- **Environment Variables**: Use descriptive UPPERCASE names for environment variables.
- **File Organization**: Keep configuration files (.env, Dockerfile) in the root directory.
- **Error Handling**: Log all errors with appropriate context information.
- **Naming Conventions**: Use descriptive, lowercase_with_underscores for variable/function names.
- **Docker Best Practices**: Follow multi-stage builds, minimize layer size, and use specific tags.