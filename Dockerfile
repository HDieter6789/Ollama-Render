FROM ollama/ollama:latest

# Expose Ollama port
EXPOSE 11434

# Override entrypoint and create proper startup script
ENTRYPOINT []

# Create startup script that runs ollama serve and pulls model
CMD ["/bin/bash", "-c", "ollama serve & sleep 10 && ollama pull nomic-embed-text && wait"]
