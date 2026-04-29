#!/bin/bash
# Post-create script for setting up the development environment

echo "🚀 Setting up GitHub Copilot xUnit Testing Environment..."

# Add NuGet source
echo "📦 Configuring NuGet source..."
dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org 2>/dev/null || true

# Install common test dependencies if a project file exists
if [ -f "*.csproj" ]; then
    echo "📚 Restoring dependencies..."
    dotnet restore
fi

# Create a helpful setup message
echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Download the lab zip file: AZ2007LabAppM4.zip"
echo "2. Extract it to your workspace"
echo "3. Run 'dotnet build' to build the solution"
echo "4. Run 'dotnet test' to execute the tests"
echo ""
echo "💡 Pro tips:"
echo "• Use GitHub Copilot Chat (@workspace) to analyze code"
echo "• Check Test Explorer (beaker icon) to run individual tests"
echo "• Use inline Copilot suggestions with Ctrl+I"
echo ""
