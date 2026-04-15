# Install dependencies
install:
	bundle install

# Run local server — visit http://localhost:4000
serve:
	bundle exec jekyll serve --livereload

# Build the site without serving
build:
	bundle exec jekyll build

# Clean generated files
clean:
	bundle exec jekyll clean