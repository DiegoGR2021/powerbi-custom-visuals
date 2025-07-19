# Use Node.js 18 as base image
FROM node:18-bullseye

# Set working directory
WORKDIR /app

# Install Python and pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

# Install Power BI Custom Visuals Tool globally
RUN npm install -g powerbi-visuals-tools

# Copy package files
COPY package*.json ./
COPY requirements.txt ./

# Install Node.js dependencies
RUN npm install

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Copy source code
COPY . .

# Create necessary directories
RUN mkdir -p src dist data notebooks docs tests

# Expose ports for development
EXPOSE 8080 8888

# Set environment variables
ENV NODE_ENV=development
ENV PYTHONPATH=/app

# Create a startup script
RUN echo '#!/bin/bash\n\
echo "Starting Power BI Custom Visuals Development Environment..."\n\
echo "Available commands:"\n\
echo "  - npm start: Start Power BI visual development server"\n\
echo "  - jupyter notebook: Start Jupyter notebook server"\n\
echo "  - pbiviz new MyVisual: Create new custom visual"\n\
echo "  - npm run lint: Run ESLint"\n\
echo "  - npm run test: Run tests"\n\
echo ""\n\
echo "Starting Jupyter notebook server..."\n\
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token="" --NotebookApp.password="" &\n\
echo "Jupyter notebook available at http://localhost:8888"\n\
echo "Press Ctrl+C to stop"\n\
wait' > /app/start.sh && chmod +x /app/start.sh

# Default command
CMD ["/app/start.sh"] 