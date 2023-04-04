import sqlalchemy as sq
from sqlalchemy.orm import declarative_base, relationship, sessionmaker

Base = declarative_base()

class Author(Base):
    __tablename__ = "author"

    author_id = sq.Column(sq.Integer, primary_key=True)
    author_name = sq.Column(sq.String(length=40), unique=True)

    def __str__(self):
        return f'Author {self.author_id}: {self.author_name}'


class Book(Base):
    __tablename__ = "book"

    book_id = sq.Column(sq.Integer, primary_key=True)
    book_name = sq.Column(sq.String(length=40), unique=True)
    author_id = sq.Column(sq.Integer, sq.ForeignKey("author.author_id"), nullable=False)

    author = relationship(Author, backref="book")

    def __str__(self):
        return f'Book {self.book_id}: {self.book_name}'

class Shop(Base):
    __tablename__ = "shop"

    shop_id = sq.Column(sq.Integer, primary_key=True)
    shop_name = sq.Column(sq.String(length=40), unique=True)
    shop_address = sq.Column(sq.String(length=40), unique=True)

    def __str__(self):
        return f'Shop {self.shop_id}: {self.shop_name}'

class Sale(Base):
    __tablename__ = "sale"

    sale_id = sq.Column(sq.Integer, primary_key=True)
    date_sale = sq.Column(sq.Date, nullable=False)
    book_id = sq.Column(sq.Integer, sq.ForeignKey("book.book_id"), nullable=False)
    cost_of_book = sq.Column(sq.Integer, nullable=False)
    shop_id = sq.Column(sq.Integer, sq.ForeignKey("shop.shop_id"), nullable=False)

    book_re = relationship(Book, backref="sale")
    shop_re = relationship(Shop, backref="sale")

    def __str__(self):
        return f'Sale {self.sale_id}: {self.date_sale}: {self.book_id}: {self.cost_of_book}: {self.shop_id} '

def create_tables(engine):
    Base.metadata.drop_all(engine)
    Base.metadata.create_all(engine)
