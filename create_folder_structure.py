import os

def create_folder(path):
    os.makedirs(path, exist_ok=True)
    print(f"✅ Created: {path}")

# Base directory (current working directory)
base_dir = os.getcwd()

# Base folders only, no project names yet
folders = [
    "dags",
    "plugins",
    "logs",
    "dbt",        # Projects will be added later
    "sqlmesh",    # Projects will be added later
    "config"
]

# Create the folders
for folder in folders:
    create_folder(os.path.join(base_dir, folder))

print("\n🎉 Base folder structure created successfully!")
