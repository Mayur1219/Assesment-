## Import required packages
import pyodbc 

## create connection with sql server
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=LAPTOP-RCCQME1S;'
                      'Database=hospital;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()
## get distinct Country from Intermediate table
cursor.execute('select distinct TRIM(Country) from patient')

## stored distinct Country result into variable
dist_country = list(cursor.fetchall())
for i in dist_country:
    ## Checking for table is exists or not 
    if cursor.tables(table='Table_'+str(','.join(i)), tableType='TABLE').fetchone():
        print('Table_'+str(','.join(i)),"exists")
        
        ## if exists then get all records from Intermediate table for perticular country
        ## and check the customer_id is present or not in destination table
        ## if Customer_id is not preset then insert the records into destination table
        
        rec = list(cursor.execute('select * from patient where Country=?',i))
        columns = cursor.columns(table='Table_'+str(','.join(i)), schema='dbo').fetchall()
        for j in rec:
            cursor.execute('select * from Table_'+str(','.join(i))+' where Country=? and Customer_Id=?',str(','.join(i)),j[1])
            row_cnt = cursor.fetchone()
            if  row_cnt is None :
                print(j[1],'Customer_Id record not exist so inserting into table')
                insertQuery  = "insert into {0} values ({1})".format('Table_'+str(','.join(i)), ','.join('?' * len(columns)))
                cursor.execute(insertQuery, j)
                cursor.commit()
    else:
        ## if table not exists then create and insert data using select into statement of sql server
        print('Table_'+str(','.join(i)),"doesn't exist so table created and data inserted")
        cursor.execute('select * into Table_'+str(','.join(i))+' from patient where Country=?',i)
        cursor.commit()
## closing sql server connection
cursor.close()

