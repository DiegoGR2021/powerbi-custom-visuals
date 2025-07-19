# Power BI Custom Visualizations

A repository for developing and testing custom Power BI visualizations using D3.js and the Power BI Custom Visuals SDK.

## Overview

This repository contains custom Power BI visualizations built with modern web technologies. Each visualization is designed to extend Power BI's native capabilities with custom interactive charts and data displays.

## Quick Setup with Docker (Recommended)

The easiest way to get started is using Docker, which provides a complete development environment without installing additional tools on your computer.

### Prerequisites

- **Docker Desktop** (Download from [docker.com](https://www.docker.com/products/docker-desktop/))
- **Git** (for cloning the repository)

### Setup Steps

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd powerbi-custom-visuals
   ```

2. **Copy environment file:**
   ```bash
   cp .env.example .env
   ```

3. **Build and start the development environment:**
   ```bash
   docker-compose up --build
   ```

4. **Access the development environment:**
   - **Jupyter Notebook**: http://localhost:8888
   - **Power BI Development Server**: http://localhost:8080

### Docker Commands

```bash
# Start the development environment
docker-compose up

# Start in background
docker-compose up -d

# Stop the environment
docker-compose down

# Rebuild after changes
docker-compose up --build

# Access the container shell
docker-compose exec powerbi-dev bash
```

## Manual Setup (Alternative)

If you prefer to install tools locally, follow these steps:

### Prerequisites

- **Node.js** (v16 or higher)
- **npm** or **yarn**
- **Python 3.8+** (for data analysis)
- **Power BI Desktop** (for testing)
- **Power BI Custom Visuals Tool** (pbiviz)

### Installation

1. **Install the Power BI Custom Visuals Tool globally:**
   ```bash
   npm install -g powerbi-visuals-tools
   ```

2. **Install project dependencies:**
   ```bash
   npm install
   pip install -r requirements.txt
   ```

3. **Set up environment variables:**
   ```bash
   cp .env.example .env
   # Edit .env with your specific configuration
   ```

## Project Structure

```
powerbi-custom-visuals/
├── src/                    # Source code for visualizations
├── dist/                   # Built visualizations
├── data/                   # Sample data for testing
├── notebooks/              # Jupyter notebooks for analysis
├── docs/                   # Documentation
├── tests/                  # Test files
├── Dockerfile              # Docker development environment
├── docker-compose.yml      # Docker orchestration
└── .env.example           # Environment variables template
```

## Development

### Creating a New Visualization

1. **Using Docker (Recommended):**
   ```bash
   docker-compose exec powerbi-dev pbiviz new MyCustomVisual
   ```

2. **Using local installation:**
   ```bash
   pbiviz new MyCustomVisual
   ```

3. **Navigate to the visual directory:**
   ```bash
   cd MyCustomVisual
   ```

4. **Install dependencies:**
   ```bash
   npm install
   ```

5. **Start development server:**
   ```bash
   pbiviz start
   ```

### Building for Production

```bash
# Using Docker
docker-compose exec powerbi-dev pbiviz package

# Using local installation
pbiviz package
```

## Testing

- Use Power BI Desktop to import and test custom visuals
- Sample data is provided in the `data/` directory
- Jupyter notebooks in `notebooks/` for data analysis and visualization testing
- Access Jupyter at http://localhost:8888 when using Docker

## Development Workflow

1. **Start the development environment:**
   ```bash
   docker-compose up
   ```

2. **Create or modify visualizations in the `src/` directory**

3. **Test with sample data using Jupyter notebooks**

4. **Build and package for Power BI**

5. **Import into Power BI Desktop for final testing**

## Environment Variables

Copy `.env.example` to `.env` and configure:

- `NODE_ENV`: Development environment
- `PORT`: Power BI development server port
- `JUPYTER_PORT`: Jupyter notebook port
- Database settings (optional)
- API keys (if needed)

## Contributing

1. Create a feature branch
2. Develop your visualization
3. Test thoroughly with sample data
4. Submit a pull request

## Troubleshooting

### Docker Issues

- **Port conflicts**: Change ports in `docker-compose.yml` or `.env`
- **Permission issues**: Run Docker as administrator (Windows)
- **Build failures**: Check Docker logs with `docker-compose logs`

### Development Issues

- **Power BI tool not found**: Ensure `powerbi-visuals-tools` is installed globally
- **TypeScript errors**: Check `tsconfig.json` configuration
- **D3.js issues**: Verify D3.js version compatibility

## License

This project is licensed under the MIT License.