VENDOR_DIR=vendor
VENDOR_FILE=$(VENDOR_DIR)/installed

.PHONY: default help env run test clean

default: run

help:
	@echo "'make clean': Cleans up generated files."
	@echo "'make env': Prepare development environment."
	@echo "'make run': Run the project."
	@echo "'make test': Run the tests."
	@echo

env: $(VENDOR_FILE)
$(VENDOR_FILE): Gemfile
	@echo "Preparing development environment..."
	@bundle install --path vendor/bundle
	@touch $(VENDOR_FILE)
	@echo "Done!"
	@echo

run: env
	@echo "Running the project..."
	@bundle exec jekyll serve --config _config.yml,_config-dev.yml
	@echo "Done!"
	@echo

test: env
	@echo "Running the tests..."
	@bundle exec jekyll build
	@bundle exec htmlproofer ./_site --http-status-ignore "403"
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
