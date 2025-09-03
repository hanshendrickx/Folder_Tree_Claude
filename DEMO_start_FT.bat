@echo off
call C:\Users\hansh\envs\v0FFT\.venv\Scripts\activate.bat
cd C:\Users\hansh\envs\v0FFT\v0_Free_Folder_Tree
python folder_tree.py /path/to/your/project
python folder_tree.py . --style artisanal --icons artisana
python folder_tree.py . --style artisanal --icons artisanal --max-files 5 --depth 3
python folder_tree.py . --icons artisanal --max-files 5 --depth 3
python folder_tree.py . 5 beautify --icons artisanal --max-files 5
python folder_tree.py . --icons artisanal --depth 2
python folder_tree.py . --max-files 3
python folder_tree.py . --style artisanal --icons artisanal --depth 4
