VENDOR_DIR=vendor
VENDOR_FILE=$(VENDOR_DIR)/installed

.PHONY: default help env run test clean

default: run

help:
	@echo "'make run': Run the website."
	@echo "'make env': Prepare development environment, use only once."
	@echo "'make test': Run a htmlproofer for tests."
	@echo "'make clean': Cleans up generated files."
	@echo

env: $(VENDOR_FILE)
$(VENDOR_FILE):
	@echo "Preparing development environment..."
	@bundle install --path vendor/bundle
	@touch $(VENDOR_FILE)
	@echo "Done!"
	@echo

run: env
	@echo "Running the website..."
	@bundle exec jekyll serve --config _config.yml,_config-dev.yml
	@echo "Done!"
	@echo

test: env
	@echo "Running test: htmlproofer..."
	@bundle exec jekyll build
	@bundle exec htmlproofer ./_site --only-4xx
	@echo "Done!"
	@echo

clean:
	@echo "Cleaning up generated files..."
	@rm -f Gemfile.lock
	@rm -rf $(VENDOR_DIR)
	@rm -rf .bundle
	@rm -rf .sass-cache
	@rm -rf _site
	@echo "Done!"
	@echo
