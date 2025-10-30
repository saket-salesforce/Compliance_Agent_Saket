#!/bin/bash

echo "🚀 Starting AI Compliance Dashboard Demo"
echo "========================================"

# Kill any existing processes
echo "🔄 Stopping existing processes..."
pkill -f "python.*simple_main" 2>/dev/null || true
pkill -f "npm start" 2>/dev/null || true

# Start backend
echo "📊 Starting backend server..."
cd backend
source venv/bin/activate
python app/simple_main.py &
BACKEND_PID=$!
cd ..

# Wait for backend to start
echo "⏳ Waiting for backend to start..."
sleep 5

# Check if backend is running
if curl -s http://localhost:8000/health > /dev/null; then
    echo "✅ Backend is running at http://localhost:8000"
else
    echo "❌ Backend failed to start"
    exit 1
fi

# Start frontend
echo "🎨 Starting frontend server..."
cd frontend
npm start &
FRONTEND_PID=$!
cd ..

# Wait for frontend to start
echo "⏳ Waiting for frontend to start..."
sleep 10

echo ""
echo "🎉 AI Compliance Dashboard is now running!"
echo ""
echo "🌐 Dashboard: http://localhost:3000"
echo "🔧 API Docs: http://localhost:8000/docs"
echo "📊 Health Check: http://localhost:8000/health"
echo ""
echo "Press Ctrl+C to stop all services"

# Keep script running
wait



