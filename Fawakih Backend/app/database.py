from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os
from dotenv import load_dotenv

load_dotenv() # Load variables from .env file

DATABASE_URL = os.getenv("DATABASE_URL") # Get DB URL from environment

engine = create_engine(DATABASE_URL) # Connect to PostgreSQL
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine) # Create a session factory
Base = declarative_base() # Base class for our models to inherit from

# Dependency to get DB session
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()