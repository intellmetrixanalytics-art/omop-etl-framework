#!/bin/bash

echo "=================================================="
echo "🚀 OMOP ETL Training Environment Setup"
echo "=================================================="
echo ""

# Update system
echo "📦 Updating system packages..."
sudo apt-get update -qq

# Install required packages
echo "📦 Installing required packages..."
sudo apt-get install -y -qq \
    mysql-client \
    postgresql-client \
    curl \
    wget \
    vim \
    git

# Install Python packages
echo "🐍 Installing Python packages..."
pip install --quiet --upgrade pip
pip install --quiet \
    pyyaml \
    sqlalchemy \
    pymysql \
    psycopg2-binary \
    pandas \
    click \
    jinja2 \
    python-dotenv \
    rich

# Create project directories
echo "📁 Creating project structure..."
mkdir -p config/mappings
mkdir -p config/transforms
mkdir -p framework
mkdir -p adapters
mkdir -p templates
mkdir -p tests
mkdir -p examples/openmrs_to_omop
mkdir -p docs
mkdir -p logs

# Create placeholder files if they don't exist
echo "📝 Creating placeholder files..."

# Create framework __init__.py if it doesn't exist
if [ ! -f "framework/__init__.py" ]; then
    cat > framework/__init__.py << 'EOF'
"""
OMOP ETL Framework
==================
Universal ETL framework for converting healthcare data to OMOP CDM format.
"""

__version__ = "0.1.0"
__author__ = "OHDSI Africa"
EOF
fi

# Create adapters __init__.py if it doesn't exist
if [ ! -f "adapters/__init__.py" ]; then
    cat > adapters/__init__.py << 'EOF'
"""
Database Adapters
=================
Pluggable adapters for different data sources.
"""

__version__ = "0.1.0"
EOF
fi

# Create .env.example if it doesn't exist
if [ ! -f ".env.example" ]; then
    cat > .env.example << 'EOF'
# OMOP ETL Framework - Environment Variables

# Source Database (OpenMRS)
SOURCE_DB_TYPE=mysql
SOURCE_DB_HOST=localhost
SOURCE_DB_PORT=3306
SOURCE_DB_NAME=openmrs
SOURCE_DB_USER=root
SOURCE_DB_PASSWORD=root

# Target Database (OMOP)
OMOP_DB_TYPE=postgresql
OMOP_DB_HOST=localhost
OMOP_DB_PORT=5432
OMOP_DB_NAME=omop
OMOP_DB_USER=omop
OMOP_DB_PASSWORD=omop

# Framework Settings
LOG_LEVEL=INFO
EOF
fi

# Copy .env.example to .env
if [ ! -f ".env" ]; then
    cp .env.example .env
    echo "✅ Created .env file from template"
fi

echo ""
echo "=================================================="
echo "✅ Setup Complete!"
echo "=================================================="
echo ""
echo "Next steps:"
echo "1. Review the documentation: cat README.md"
echo "2. Check the configuration: cat .env"
echo "3. Explore the project: ls -la"
echo ""
echo "Ready to start! 🎉"
echo ""
