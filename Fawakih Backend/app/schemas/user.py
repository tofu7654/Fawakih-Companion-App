from pydantic import BaseModel, EmailStr
from datetime import datetime

# Schema for user creation (input)
class UserCreate(BaseModel):
    email: EmailStr
    name: str

# Schema for returning user data (output)
class UserOut(BaseModel):
    id: int
    email: EmailStr
    name: str
    created_at: datetime

    class Config:
        orm_mode = True # Allows using SQLAlchemy objects directly