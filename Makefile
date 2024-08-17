# Define the source and destination directories
NVIM_SRC := ~/.config/nvim
NVIM_DEST := $(CURDIR)/nvim

# Define the load target
load:
	@echo "Checking if source and destination directories exist..."
	@mkdir -p $(NVIM_DEST)
	@echo "Loading Neovim config files..."
	@rsync -av --progress $(NVIM_SRC)/ $(NVIM_DEST)/
	@echo "Neovim config files loaded successfully."

# Define the install target
install:
	@echo "Checking if source and destination directories exist..."
	@mkdir -p $(NVIM_DEST)
	@mkdir -p $(NVIM_SRC)
	@echo "Installing Neovim config files..."
	@rm -rf $(NVIM_SRC)/*
	@rsync -av --progress $(NVIM_DEST)/ $(NVIM_SRC)/
	@echo "Neovim config files installed successfully."

.PHONY: load install

