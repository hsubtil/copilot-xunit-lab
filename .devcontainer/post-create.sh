#!/bin/bash
# Post-create script for setting up the development environment

echo "🚀 Setting up GitHub Copilot xUnit Testing Environment..."

# Add NuGet source
echo "📦 Configuring NuGet source..."
dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org 2>/dev/null || true

# Restore and build if projects exist
if [ -f "src/Library.Console/Library.Console.csproj" ]; then
    echo "📚 Restoring dependencies..."
    dotnet restore
    echo "🔨 Building solution..."
    dotnet build
fi

# Create a helpful setup message
echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Run 'dotnet build' to build the solution"
echo "2. Run 'dotnet test tests/UnitTests/UnitTests.csproj' to execute tests"
echo "3. Run 'dotnet run --project src/Library.Console/Library.Console.csproj' to run the app"
echo ""
echo "💡 Pro tips:"
echo "• Use GitHub Copilot Chat (@workspace) to analyze code"
echo "• Check Test Explorer (beaker icon) to run individual tests"
echo "• Use inline Copilot suggestions with Ctrl+I"
echo ""
