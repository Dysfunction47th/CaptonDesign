import mysql.connector
import random
from mysql.connector import Error
import math
from datetime import datetime

def insertData():
    data = list()

    # 파일을 열어서 데이터를 읽고 data 리스트에 저장
    with open("data1.txt", "r") as f:
        data = f.readlines()

    # 파일을 닫을 필요가 없습니다. with 문을 사용하면 자동으로 파일이 닫힙니다.

    # 리스트의 처음 3개 요소를 출력
    # for i in range(3):
    #     if i < len(data):
    #         print(data[i])


    print( "data[0]" + data[0])
    print( "data[1]" + data[1])
    print( "data[2]" + data[2])




    # 데이터베이스 연결 설정
    try:
        connection = mysql.connector.connect(
            host='192.168.50.153', #your_host
            database='testPythonData', #dbname
            user='root',
            password='root'
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # id에 8자리의 랜덤 값을 생성
            id_value = math.floor(random.random() * 100000000)
            
            current_time = datetime.now()

            # temperature, humidity, dust 값을 설정
            # temperature = 7.5
            # humidity = 6.5
            # dust = 20

            # temperature, humidity, dust 값을 설정
            temperature = data[0]
            humidity = data[1]
            dust = data[2]

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





