# OMOP ETL Framework - ODHSI Africa Training

> Universal ETL framework for converting healthcare data to OMOP CDM format

## 🚀 Quick Start (1 Click!)

### For Students

1. Click the button below:

   [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/YOUR-USERNAME/omop-etl-framework)

2. Wait 2-3 minutes while environment sets up
3. Start learning!

### What You Get

✅ Complete development environment in your browser  
✅ OpenMRS database with sample data  
✅ OMOP database ready to use  
✅ All tools and frameworks pre-installed  
✅ No installation needed!

## 📚 Documentation

- [Getting Started Guide](docs/getting_started.md)
- [Configuration Guide](docs/configuration_guide.md)
- [Tutorial: First Mapping](docs/tutorial_first_mapping.md)

## 🎯 What's Included

- **Databases**: MySQL (OpenMRS) + PostgreSQL (OMOP)
- **Tools**: Python, Docker, SQL clients
- **Framework**: Complete ETL framework
- **Examples**: Sample mappings and data
- **Guides**: Step-by-step tutorials

## 💻 Using the Environment

Once your Codespace opens:
```bash
# Check everything is ready
docker-compose ps

# Start databases (if not already running)
docker-compose up -d

# Explore sample data
docker-compose exec source-db mysql -u root -p openmrs
# Password: root

# Run framework commands (coming soon!)
# omop-etl --help
```

## 🆘 Need Help?

- Check the [Documentation](docs/)
- Ask in [GitHub Discussions](https://github.com/YOUR-USERNAME/omop-etl-framework/discussions)
- Contact: your-email@example.com

## 📖 About OHDSI Africa

This project is part of ODHSI Africa's initiative to standardize healthcare data across the continent.

## 📜 License

MIT License - see [LICENSE](LICENSE) for details
