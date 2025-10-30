# AI Compliance Dashboard - Setup Guide

## 🚀 Quick Start

### Prerequisites
- Docker and Docker Compose
- Node.js 18+ (for local development)
- Python 3.9+ (for local development)
- Git

### Option 1: Docker Compose (Recommended)

1. **Clone and start all services:**
   ```bash
   git clone <repository-url>
   cd compliance-dashboard
   docker-compose up -d
   ```

2. **Initialize database:**
   ```bash
   python scripts/init_db.py
   ```

3. **Access the application:**
   - Dashboard: http://localhost:3000
   - API Documentation: http://localhost:8000/docs
   - Database: localhost:5432

### Option 2: Local Development

1. **Start database services:**
   ```bash
   docker-compose up -d db redis
   ```

2. **Initialize database:**
   ```bash
   python scripts/init_db.py
   ```

3. **Start backend:**
   ```bash
   cd backend
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   python app.py
   ```

4. **Start frontend (in new terminal):**
   ```bash
   cd frontend
   npm install
   npm start
   ```

## 🏗️ Architecture Overview

### System Components
```
┌─────────────────────┐    ┌──────────────────┐    ┌─────────────────────┐
│   Frontend Layer    │    │   Backend API    │    │   AI/ML Engine      │
│                     │    │                  │    │                     │
│ - React Dashboard   │◄──►│ - FastAPI/Flask  │◄──►│ - Risk Scoring      │
│ - Real-time UI      │    │ - WebSocket      │    │ - Anomaly Detection │
│ - Data Viz          │    │ - Auth/RBAC      │    │ - Pattern Analysis  │
└─────────────────────┘    └──────────────────┘    └─────────────────────┘
           │                          │                          │
           │                          │                          │
           ▼                          ▼                          ▼
┌─────────────────────┐    ┌──────────────────┐    ┌─────────────────────┐
│   State Management  │    │   Data Layer     │    │   External APIs     │
│                     │    │                  │    │                     │
│ - Redux/Zustand     │    │ - PostgreSQL     │    │ - Salesforce        │
│ - Real-time cache   │    │ - Redis Cache    │    │ - ERP Systems       │
│ - Optimistic UI     │    │ - Event Store    │    │ - Billing Platforms │
└─────────────────────┘    └──────────────────┘    └─────────────────────┘
```

### Tech Stack
- **Frontend**: React 18+ with TypeScript, TailwindCSS, Recharts
- **Backend**: FastAPI (Python) with WebSocket support
- **Database**: PostgreSQL 15 with Redis caching
- **AI/ML**: Python (scikit-learn, XGBoost) for risk scoring
- **Real-time**: WebSockets for live updates
- **Deployment**: Docker containers

## 📊 Steel Thread Use Cases

### Implemented Compliance Checks

#### Opportunity Compliance (OPC)
- **OPC-1: Approval Matrix Adherence** ✅
  - Validates deal approval authority based on value and role
  - Flags violations when deals exceed approver limits

- **OPC-2: Product Line Restrictions** ✅
  - Checks product availability by region/customer type
  - Prevents sales of restricted products

- **OPC-3: Customer Sanctions Screening** ✅
  - Validates customers against sanctions lists
  - Blocks transactions with prohibited entities

- **OPC-4: Sales Tax Jurisdictional Rules** ✅
  - Ensures correct tax rates by location
  - Prevents tax calculation errors

- **OPC-5: Policy for High-Risk Markets** ✅
  - Enforces additional scrutiny for high-risk regions
  - Requires extra approvals for flagged countries

#### Quote Compliance (QC)
- **QC-1: Pricing Policy Adherence** ✅
  - Validates discounts against company policies
  - Prevents unauthorized discounting

- **QC-2: Contractual Term Consistency** ✅
  - Ensures quotes match approved templates
  - Flags non-standard terms

- **QC-3: Customer Data Validation** ✅
  - Validates required customer information
  - Prevents incomplete data submission

- **QC-4: Product Configuration Rules** ✅
  - Validates product combinations
  - Prevents invalid configurations

- **QC-5: Standard Quote Template Usage** ✅
  - Ensures current templates are used
  - Maintains branding consistency

#### Order Compliance (OC)
- **OC-1: Duty Segregation** ✅
  - Prevents unauthorized self-approvals
  - Maintains separation of duties

- **OC-2: Transaction Price Accuracy** ✅
  - Validates pricing calculations
  - Ensures price consistency

- **OC-3: Credit and Approval Checks** ✅
  - Validates credit limits
  - Enforces approval requirements

- **OC-4: Revenue Recognition & Fulfillment Alignment** ✅
  - Ensures proper revenue timing
  - Validates fulfillment status

- **OC-5: Data Integrity and Completeness** ✅
  - Validates required fields
  - Prevents incomplete orders

## 🤖 AI/ML Features

### Risk Scoring Engine
- **Predictive Risk Assessment**: 0-100 risk score for each deal
- **Multi-factor Analysis**: Discount, approval, customer, and anomaly risk
- **Real-time Scoring**: Immediate risk assessment as deals are created
- **Confidence Scoring**: AI confidence levels for recommendations

### Machine Learning Models
- **Discount Risk Model**: Predicts churn probability based on discount patterns
- **Approval Risk Model**: Identifies approval matrix violations
- **Customer Risk Model**: Assesses customer-related risks
- **Anomaly Detection**: Identifies unusual transaction patterns

### AI Insights
- **Automated Recommendations**: AI-generated action items
- **Pattern Recognition**: Identifies compliance trends
- **Predictive Alerts**: Early warning system for potential violations
- **Natural Language Explanations**: Human-readable risk explanations

## 🔧 Configuration

### Environment Variables

#### Backend (.env)
```bash
DATABASE_URL=postgresql://compliance_user:compliance_pass@localhost:5432/compliance_db
REDIS_URL=redis://localhost:6379
ENVIRONMENT=development
HOST=0.0.0.0
PORT=8000
LOG_LEVEL=info
```

#### Frontend (.env)
```bash
REACT_APP_API_URL=http://localhost:8000
REACT_APP_WS_URL=ws://localhost:8000
```

### Database Configuration
- **PostgreSQL 15**: Main database for deals, compliance checks, risk assessments
- **Redis 7**: Caching and real-time data
- **Connection Pooling**: Optimized for high concurrency
- **Indexes**: Performance-optimized for compliance queries

## 📈 Monitoring & Observability

### Real-time Monitoring
- **WebSocket Connections**: Live updates for compliance status
- **Activity Stream**: Real-time event feed
- **Health Checks**: Service availability monitoring
- **Performance Metrics**: Response times and throughput

### Logging
- **Structured Logging**: JSON-formatted logs
- **Log Levels**: DEBUG, INFO, WARNING, ERROR
- **Request Tracing**: End-to-end request tracking
- **Error Tracking**: Comprehensive error logging

## 🚀 Deployment

### Production Deployment
1. **Build Images**:
   ```bash
   docker-compose -f docker-compose.prod.yml build
   ```

2. **Deploy Stack**:
   ```bash
   docker-compose -f docker-compose.prod.yml up -d
   ```

3. **Initialize Database**:
   ```bash
   python scripts/init_db.py
   ```

### Scaling
- **Horizontal Scaling**: Multiple backend instances
- **Database Scaling**: Read replicas for queries
- **Caching**: Redis cluster for high availability
- **Load Balancing**: Nginx for frontend distribution

## 🧪 Testing

### Backend Tests
```bash
cd backend
python -m pytest tests/ -v
```

### Frontend Tests
```bash
cd frontend
npm test
```

### Integration Tests
```bash
docker-compose -f docker-compose.test.yml up --abort-on-container-exit
```

## 📚 API Documentation

### Core Endpoints
- `GET /api/dashboard` - Dashboard data and metrics
- `GET /api/deals` - Deal management
- `GET /api/compliance/checks` - Compliance checks
- `GET /api/alerts` - Alert management
- `WebSocket /ws/compliance` - Real-time updates

### Interactive Documentation
- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc
- **OpenAPI Schema**: http://localhost:8000/openapi.json

## 🔒 Security

### Authentication & Authorization
- **JWT Tokens**: Secure API authentication
- **Role-Based Access Control**: Granular permissions
- **API Rate Limiting**: Protection against abuse
- **CORS Configuration**: Secure cross-origin requests

### Data Protection
- **Encryption at Rest**: Database encryption
- **Encryption in Transit**: TLS/SSL for all communications
- **Audit Logging**: Complete action audit trail
- **Data Masking**: Sensitive data protection

## 🐛 Troubleshooting

### Common Issues

1. **Database Connection Failed**
   ```bash
   # Check if PostgreSQL is running
   docker-compose ps db
   
   # Check logs
   docker-compose logs db
   ```

2. **WebSocket Connection Issues**
   ```bash
   # Check backend logs
   docker-compose logs backend
   
   # Verify WebSocket endpoint
   curl -i -N -H "Connection: Upgrade" -H "Upgrade: websocket" -H "Sec-WebSocket-Key: test" -H "Sec-WebSocket-Version: 13" http://localhost:8000/ws/compliance
   ```

3. **Frontend Build Issues**
   ```bash
   # Clear node modules and reinstall
   cd frontend
   rm -rf node_modules package-lock.json
   npm install
   ```

### Performance Issues
- **Database Queries**: Check query performance with EXPLAIN ANALYZE
- **Memory Usage**: Monitor container memory usage
- **Network Latency**: Check network connectivity between services

## 📞 Support

### Getting Help
- **Documentation**: Check this README and inline code comments
- **Issues**: Create GitHub issues for bugs and feature requests
- **Discussions**: Use GitHub discussions for questions

### Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## 🎯 Next Steps

### Phase 2 Enhancements
- [ ] Advanced ML models with more training data
- [ ] Natural language processing for contract analysis
- [ ] Automated remediation workflows
- [ ] Advanced reporting and analytics
- [ ] Mobile application

### Enterprise Features
- [ ] Multi-tenant support
- [ ] Advanced audit trails
- [ ] Custom compliance rules engine
- [ ] Integration with enterprise systems
- [ ] Advanced security features

---

**Built with ❤️ for Chief Compliance Officers**



