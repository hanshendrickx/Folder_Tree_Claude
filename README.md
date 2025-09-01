# 🌳 Professional Folder Tree Generator
# Folder_Tree_Claude
Create Folder Tree of variable depth in variable media formats. using py.

A powerful, professional-grade Python tool for generating beautiful folder structure visualizations. Perfect for documentation, code reviews, project planning, and sharing directory structures with teams and clients.

![Python Version](https://img.shields.io/badge/python-3.7+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg)

## ✨ Key Features

### 🎨 **Multiple Visual Styles**
- **Simple**: Clean ASCII characters for maximum compatibility
- **Professional**: Bracketed file type indicators `[PY]` `[JS]` `[PDF]`
- **Artisanal**: Beautiful emoji icons 🐍 📄 🎬 🖼️ for stunning visuals

### 📋 **Multiple Output Formats**
- **📄 Text**: Console output or .txt files with professional headers
- **🖼️ PNG**: High-quality images with customizable fonts
- **📊 PDF**: Professional reports perfect for documentation

### 🎯 **Smart Features**
- **File Limiting**: Limit files per folder (perfect for A4 reports!)
- **Depth Control**: Analyze 1-10 directory levels deep
- **File Filtering**: Include only specific categories (code, images, documents)
- **Size Information**: Display file and folder sizes
- **Hidden Files**: Toggle visibility of dotfiles
- **Smart Sorting**: Directories-first organization

## 🚀 Quick Start

### Option 1: Direct Download (Easiest!)
```bash
# Download the script directly to your project
curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py

# Use immediately (no dependencies needed for text output)
python folder_tree.py . --style artisanal --icons artisanal

# For PNG/PDF output, install optional dependencies
pip install Pillow reportlab
```

### Option 2: Clone Repository
```bash
# Clone the full repository
git clone https://github.com/hanshendrickx/Folder_Tree_Claude.git
cd Folder_Tree_Claude

# Install dependencies (optional - for PNG/PDF output)
pip install -r requirements.txt
```

### Option 3: Use in Any Project
```bash
# Navigate to your project directory
cd /path/to/your/awesome/project

# Download the script
curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py

# Generate your project's folder tree
python folder_tree.py . --style artisanal --icons artisanal --max-files 5

# Clean up after use (optional)
rm folder_tree.py
```

### Basic Usage
```bash
# Simple console output
python folder_tree.py /path/to/your/project

# Beautiful emoji version
python folder_tree.py . --style artisanal --icons artisanal

# Perfect for A4 reports (limit files per folder)
python folder_tree.py . --style artisanal --icons artisanal --max-files 5 --depth 3
```

## 🎯 Use in Your Projects

### One-Time Usage
Perfect when you just need a quick folder tree for documentation:

```bash
# Go to any project directory
cd ~/my-awesome-project

# Download and use the tool
curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py
python folder_tree.py . --style artisanal --icons artisanal --max-files 5 -o project_structure.txt

# Add to your README or documentation
cat project_structure.txt >> README.md

# Clean up
rm folder_tree.py
```

### Permanent Installation
For frequent use across multiple projects:

```bash
# Download to a permanent location
mkdir -p ~/tools
cd ~/tools
curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py

# Create an alias (add to your .bashrc or .zshrc)
alias tree-gen="python ~/tools/folder_tree.py"

# Now use from anywhere
cd /any/project
tree-gen . --style artisanal --icons artisanal --max-files 5
```

### Team Usage
Share with your team for consistent documentation:

```bash
# Add to your project as a development tool
mkdir scripts
cd scripts
curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py

# Create a documentation script
echo '#!/bin/bash
python scripts/folder_tree.py . --style artisanal --icons artisanal --max-files 5 -o STRUCTURE.md
echo "Project structure updated in STRUCTURE.md"' > update_docs.sh
chmod +x update_docs.sh

# Team members can now run:
./update_docs.sh
```

### Console Output
```bash
# Basic tree structure
python folder_tree.py .

# Artisanal style with emoji icons and file sizes
python folder_tree.py . --style artisanal --icons artisanal --show-size --depth 4

# Limit files per folder for cleaner output
python folder_tree.py . --style artisanal --icons artisanal --max-files 5
```

### Generate Images
```bash
# Create PNG image
python folder_tree.py . -o project_structure.png --style artisanal --icons artisanal

# High-quality PNG with larger font
python folder_tree.py . -o structure.png --style artisanal --font-size 16 --max-files 5
```

### Generate PDF Reports
```bash
# Professional PDF report
python folder_tree.py . -o project_report.pdf --style professional --show-size

# Compact PDF perfect for documentation
python folder_tree.py . -o overview.pdf --style artisanal --max-files 5 --depth 3
```

### Advanced Filtering
```bash
# Show only code files
python folder_tree.py . --include-categories code --style artisanal

# Multiple file types
python folder_tree.py . --include-categories code images documents

# Exclude common build/temp folders
python folder_tree.py . --exclude-patterns __pycache__ .git node_modules build dist
```

## 🎨 Visual Examples

### Simple Style
```
+ project/
├─ + src/
│  ├─ P main.py
│  └─ P utils.py
└─ M README.md
```

### Professional Style
```
[DIR] project/
├─ [DIR] src/
│  ├─ [PY] main.py
│  └─ [PY] utils.py
└─ [MD] README.md
```

### Artisanal Style
```
📂 project/
├─ 📂 src/
│  ├─ 🐍 main.py
│  └─ 🐍 utils.py
└─ 📝 README.md
```

### Smart File Limiting (Perfect for A4!)
```
📂 Scripts/
├─ ⚙️ activate.bat
├─ ⚙️ jupyter.exe  
├─ ⚙️ python.exe
├─ ⚙️ pip.exe
├─ 🐍 setup.py
└─ ... (58 more files)
```

## 📋 Command Line Options

| Option | Description | Default | Example |
|--------|-------------|---------|---------|
| `path` | Directory to analyze | Required | `.` or `/path/to/project` |
| `-o, --output` | Output file (.txt, .png, .pdf) | Console | `-o report.pdf` |
| `--style` | Tree style (simple/professional/artisanal) | simple | `--style artisanal` |
| `--icons` | Icon set (simple/professional/artisanal) | simple | `--icons artisanal` |
| `--depth` | Maximum depth (1-10) | 3 | `--depth 5` |
| `--max-files` | Max files per folder | unlimited | `--max-files 5` |
| `--show-size` | Show file sizes | False | `--show-size` |
| `--show-hidden` | Include hidden files | False | `--show-hidden` |
| `--include-categories` | File types to include | All | `--include-categories code images` |
| `--exclude-patterns` | Patterns to exclude | None | `--exclude-patterns build dist` |
| `--font-size` | PNG font size | 12 | `--font-size 16` |
| `--page-size` | PDF page size (A4/letter) | A4 | `--page-size letter` |

## 🗂️ File Categories

The tool recognizes these file categories for smart filtering:

- **📄 documents**: .txt, .md, .pdf, .doc, .docx, .rtf, .odt
- **🖼️ images**: .jpg, .jpeg, .png, .gif, .bmp, .svg, .ico, .tiff, .webp
- **🎵 audio**: .mp3, .wav, .flac, .aac, .ogg, .m4a, .wma
- **🎬 video**: .mp4, .avi, .mkv, .mov, .wmv, .flv, .webm, .m4v
- **🐍 code**: .py, .js, .html, .css, .php, .java, .cpp, .c, .cs, .rb, .go, .rs
- **🗜️ archives**: .zip, .rar, .7z, .tar, .gz, .bz2, .xz

## 💼 Use Cases

### 👥 For Development Teams
- **📋 Project Documentation**: Include folder trees in README files
- **🔍 Code Reviews**: Share project structure context
- **👋 Team Onboarding**: Help new members understand codebases
- **🏗️ Architecture Planning**: Visualize and plan project structure

### 📊 For Project Managers
- **📈 Client Reports**: Professional project overviews
- **📋 Status Updates**: Visual progress documentation
- **🎯 Planning**: Organize project deliverables
- **📊 Auditing**: Review project organization

### 🎓 For Students & Educators
- **📚 Assignment Structure**: Organize coursework properly
- **📖 Teaching Materials**: Show best practices for project organization
- **🔬 Research Documentation**: Document data and analysis structure
- **📝 Portfolio Building**: Professional project presentation

### 💻 For System Administrators
- **🔧 Server Documentation**: Document directory structures
- **📊 Storage Analysis**: Analyze disk usage patterns
- **🛠️ System Auditing**: Review file organization
- **📋 Compliance Reporting**: Generate structure reports

## 🛠️ Installation Requirements

### Basic Installation (Text Output Only)
```bash
# No additional dependencies needed
python folder_tree.py /path/to/directory
```

### Full Installation (PNG + PDF Support)
```bash
# Install all dependencies
pip install Pillow reportlab

# Or install from requirements.txt
pip install -r requirements.txt
```

### System Requirements
- **Python**: 3.7 or higher
- **OS**: Windows, macOS, Linux
- **Memory**: Minimal (handles large directories efficiently)
- **Dependencies**: 
  - `Pillow` (for PNG output) - optional
  - `ReportLab` (for PDF output) - optional

## 🎯 Professional Features

### 📊 **Smart File Limiting**
Perfect for creating reports that fit on A4 pages! Use `--max-files 5` to show only the first few files per directory, with `... (X more files)` indicators.

### 🔍 **Intelligent Directory Detection**
Automatically identifies key project directories (src, assets, docs, tests, etc.) and highlights them with special icons (📂 vs 📁).

### 📈 **Comprehensive Statistics**
Every output includes detailed statistics:
- Total folders and files
- Total size with human-readable formatting
- Truncated folder count (when using file limiting)

### 🎨 **Beautiful Output Headers**
Professional headers include:
- Project name and timestamp
- Copyright and attribution
- Icon legend for easy understanding
- Clean separator lines

## 🤝 Contributing

We welcome contributions! Here's how to help:

1. **🐛 Bug Reports**: Found an issue? Please report it!
2. **💡 Feature Requests**: Have ideas? We'd love to hear them!
3. **🔧 Code Contributions**: Submit pull requests
4. **📚 Documentation**: Help improve our docs
5. **🌟 Examples**: Share interesting use cases

### Development Setup
```bash
git clone https://github.com/hanshendrickx/Folder_Tree_Claude.git
cd Folder_Tree_Claude
pip install -r requirements.txt
python folder_tree.py . --style artisanal --icons artisanal
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Hans Hendrickx MD PhD** - Creator and maintainer
- **Claude AI** - Development assistance and optimization
- **Open Source Community** - For inspiration and feedback

## 📞 Support & Contact

- **🐛 Issues**: [GitHub Issues](https://github.com/hanshendrickx/Folder_Tree_Claude/issues)
- **💬 Discussions**: [GitHub Discussions](https://github.com/hanshendrickx/Folder_Tree_Claude/discussions)
- **📧 Contact**: [Your Email/Contact Info]

## 🌟 Star History

If you find this tool useful, please consider giving it a star! ⭐

It helps others discover the project and motivates continued development.

---

## 📸 Screenshots

*Add screenshots of your beautiful folder trees here!*

**Console Output:**
```
📂 MyProject/
├─ 📂 src/
│  ├─ 🐍 main.py (2.5 KB)
│  ├─ 🐍 utils.py (1.8 KB)
│  └─ 📁 components/
├─ 📂 docs/
│  ├─ 📝 README.md (5.2 KB)
│  └─ 📄 API.pdf (156.3 KB)
├─ 📂 tests/
│  └─ 🐍 test_main.py (1.1 KB)
└─ 🔧 package.json (892.0 B)
```

**Made with ❤️ by [Hans Hendrickx](https://github.com/hanshendrickx)**

*Transform your directory chaos into beautiful, professional documentation!* ✨