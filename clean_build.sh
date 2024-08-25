#!/bin/bash

# Clean build script for PHP SPA project

echo "Starting clean build process..."

# Remove vendor directory
echo "Removing vendor directory..."
rm -rf vendor

# Remove composer.lock file
echo "Removing composer.lock file..."
rm -f composer.lock

# Clear PHP opcode cache (if applicable)
echo "Clearing PHP opcode cache..."
php -r "opcache_reset();"

# Install dependencies
echo "Installing dependencies..."
composer install

# Run tests
echo "Running tests..."
./vendor/bin/phpunit tests

echo "Clean build process completed."
