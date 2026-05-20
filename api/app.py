import os
import psycopg2
from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

DB_HOST = os.environ.get('DB_HOST', 'localhost')
DB_NAME = os.environ.get('DB_NAME', 'bookshelf')
DB_USER = os.environ.get('DB_USER', 'postgres')
DB_PORT = os.environ.get('DB_PORT', '5432')
DB_PASSWORD = os.environ.get('DB_PASSWORD', 'postgres')

def get_db_connection():
    return psycopg2.connect(
        host=DB_HOST,
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD,
        port=DB_PORT
    )
    
@app.route('/health')
def health_check():
    return jsonify({'status': 'ok'}), 200

@app.route('/api/books')
def get_books():
    try:
        conn = get_db_connection()
        cur = conn.cursor()
        cur.execute("SELECT title, author FROM books ORDER BY id;")
        rows = cur.fetchall()
        cur.close()
        conn.close()
        
        books = [{'title': row[0], 'author': row[1]} for row in rows]
        return jsonify(books), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500


if __name__ == '__main__':
    # Listen on all 
    app.run(host='0.0.0.0', port=5000)
    