# Power BI Custom Visualizations

A repository for developing and testing custom Power BI visualizations using D3.js and the Power BI Custom Visuals SDK.

## Overview

This repository contains custom Power BI visualizations built with modern web technologies. Each visualization is designed to extend Power BI's native capabilities with custom interactive charts and data displays.

## Prerequisites

- **Node.js** (v16 or higher)
- **npm** or **yarn**
- **Power BI Desktop** (for testing)
- **Power BI Custom Visuals Tool** (pbiviz)

## Installation

1. Install the Power BI Custom Visuals Tool globally:
```bash
npm install -g powerbi-visuals-tools
```

2. Install project dependencies:
```bash
npm install
```

## Project Structure

```
powerbi-custom-visuals/
├── src/                    # Source code for visualizations
├── dist/                   # Built visualizations
├── data/                   # Sample data for testing
├── notebooks/              # Jupyter notebooks for analysis
├── docs/                   # Documentation
└── tests/                  # Test files
```

## Development

### Creating a New Visualization

1. Generate a new visual:
```bash
pbiviz new MyCustomVisual
```

2. Navigate to the visual directory:
```bash
cd MyCustomVisual
```

3. Install dependencies:
```bash
npm install
```

4. Start development server:
```bash
pbiviz start
```

### Building for Production

```bash
pbiviz package
```

## Testing

- Use Power BI Desktop to import and test custom visuals
- Sample data is provided in the `data/` directory
- Jupyter notebooks in `notebooks/` for data analysis and visualization testing

## Contributing

1. Create a feature branch
2. Develop your visualization
3. Test thoroughly with sample data
4. Submit a pull request

## License

This project is licensed under the MIT License.