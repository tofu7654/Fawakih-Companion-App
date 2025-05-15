from sqlalchemy import Column, Integer, String, DateTime
from app.database import Base
import datetime

# SQLAlchemy model that maps to a 'users' table
class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, index=True)
    name = Column(String)
    created_at = Column(DateTime, default=datetime.datetime.utcnow)