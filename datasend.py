import mysql.connector
import random
from mysql.connector import Error
import math
from datetime import datetime

# 데이터베이스 연결 설정
try:
    connection = mysql.connector.connect(
        host='localhost', #your_host
        database='pythondata', #dbname
        user='root',
        password='root'
    )

    if connection.is_connected():
        cursor = connection.cursor()

        # id에 8자리의 랜덤 값을 생성
        id_value = math.floor(random.random() * 100000000)
        
        current_time = datetime.now()

        # temperature, humidity, dust 값을 설정
        temperature = 7.5
        humidity = 6.5
        dust = 20

        # 데이터베이스에 데이터 삽입
        query = "INSERT INTO data (id, temperature, humidity, dust , time) VALUES (%s, %s, %s, %s, %s)"
        data = (id_value, temperature, humidity, dust , current_time)
        cursor.execute(query, data)

        # 변경 내용 저장
        connection.commit()
        print("데이터가 성공적으로 삽입되었습니다.")

except Error as e:
    print("오류:", e)

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
