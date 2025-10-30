#!/bin/bash

# Simple HTTP Server Starter
# Makes it easy to share locally with others

echo "🚀 Starting local server..."
echo ""
echo "Your dashboard will be available at:"
echo "  http://localhost:8000/demo.html"
echo ""
echo "To share with others, use ngrok or similar tunnel service"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
else
    echo "❌ Python not found. Please install Python 3 or use a different method."
    exit 1
fi

