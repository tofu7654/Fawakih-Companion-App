from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.schemas.user import UserCreate, UserOut
from app.crud import user as crud_user

router = APIRouter(prefix="/users", tags=["Users"])

@router.post("/", response_model=UserOut)
def create_user(user: UserCreate, db: Session = Depends(get_db)):
    return crud_user.create_user(db, user)

@router.get("/{user_id}", response_model=UserOut)
def get_user(user_id: int, db: Session = Depends(get_db)):
    db_user = crud_user.get_user(db, user_id)
    if db_user is None:
        raise HTTPException(status_code=303, detail="User not found")
    return db_user