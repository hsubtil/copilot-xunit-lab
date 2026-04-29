FROM mcr.microsoft.com/devcontainers/dotnet:9.0-jammy

# Install additional tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Ensure NuGet is configured
RUN dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org || true

WORKDIR /workspace
