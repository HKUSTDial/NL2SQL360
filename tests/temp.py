
data = []

with open("./C3_SQL.sql", "r", encoding="utf-8") as f:
    for line in f.readlines():
        data.append(line.split("\t")[0].strip())
    
with open("./C3_SQL.sql", "w", encoding="utf-8") as f:
    for sql in data:
        f.write(sql)
        f.write("\n")