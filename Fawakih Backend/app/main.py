from fastapi import FastAPI
from app.routers import users
from app.database import engine, Base
from app.models import user # Import my user model so Base knows about it


# Create all tables (like "users") in the database if they don't exist yet
Base.metadata.create_all(bind=engine)

app = FastAPI() # Create a FastAPI app instance

# Include user-related routes from the users router
app.include_router(users.router)

@app.get("/")
def read_root():
    return {"message": "Welcome to the Fawakih Arabic Companion API"}
