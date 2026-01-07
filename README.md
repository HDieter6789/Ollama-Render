# Ollama Embeddings Server

Self-hosted Ollama instance for text embeddings generation on Render.

## Models included
- **nomic-embed-text** (768 dimensions)
  - Optimiert für semantische Suche
  - Gut für Deutsch und Englisch

## Deployment
Automatically deploys to Render via render.yaml blueprint.

## API Endpoint
```
POST https://your-url.onrender.com/api/embeddings
```

## Usage
```bash
curl https://your-url.onrender.com/api/embeddings \
  -H "Content-Type: application/json" \
  -d '{
    "model": "nomic-embed-text",
    "prompt": "Your text here"
  }'
```
```

4. **"Commit changes"**

### 1.3 Finales Repo sollte so aussehen:
```
ollama-render/
├── Dockerfile
├── render.yaml
└── README.md
