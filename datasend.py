import mysql.connector
import random
from mysql.connector import Error
import math
from datetime import datetime

try:
    connection = mysql.connector.connect(
        # host='172.168.25.31',
        host='localhost',
        database='test',  # 실제 데이터베이스 이름으로 변경
        user='root',           # 실제 사용자 이름으로 변경
        password='root'        # 실제 비밀번호로 변경
    )

    if connection.is_connected():
        cursor = connection.cursor()

        id_value = random.randint(10000000, 99999999)  # 보다 안전한 ID 생성 방법

        current_time = datetime.now()
        temperature = 7.5
        humidity = 6.5
        dust = 20.5

        query = "INSERT INTO your_table_name (id, temperature, humidity, dust, time) VALUES (%s, %s, %s, %s, %s)"
        data = (id_value, temperature, humidity, dust, current_time)
        cursor.execute(query, data)

        connection.commit()
        print("데이터가 성공적으로 삽입되었습니다.")

except Error as e:
    print("오류:", e)

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
