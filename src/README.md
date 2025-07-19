# Source Code Directory

This directory contains the source code for custom Power BI visualizations.

## Structure

Each visualization should be in its own subdirectory with the following structure:

```
src/
├── MyCustomVisual/
│   ├── src/
│   │   ├── visual.ts          # Main visualization logic
│   │   ├── settings.ts        # Visual settings and formatting
│   │   └── capabilities.json  # Data mapping capabilities
│   ├── package.json           # Dependencies for this visual
│   └── pbiviz.json           # Power BI visual configuration
└── README.md                 # This file
```

## Creating a New Visualization

1. Use the Power BI Custom Visuals Tool:
   ```bash
   pbiviz new MyCustomVisual
   ```

2. The tool will create the basic structure in the current directory

3. Move the generated files to `src/MyCustomVisual/`

4. Customize the visualization in `visual.ts`

## Key Files

- **visual.ts**: Contains the main visualization logic using D3.js
- **settings.ts**: Defines formatting options and visual properties
- **capabilities.json**: Specifies data roles and mapping capabilities
- **package.json**: Lists dependencies for the specific visualization

## Development Workflow

1. Create your visualization structure
2. Implement the visual logic in TypeScript
3. Test with sample data
4. Build and package for Power BI
5. Import into Power BI Desktop for testing 