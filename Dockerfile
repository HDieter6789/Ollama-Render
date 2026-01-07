FROM ollama/ollama:latest

# Expose Ollama port
EXPOSE 11434

# Create startup script
RUN echo '#!/bin/bash\n\
ollama serve &\n\
sleep 5\n\
ollama pull nomic-embed-text\n\
wait' > /start.sh && chmod +x /start.sh

# Start Ollama server and pull model
CMD ["/start.sh"]
