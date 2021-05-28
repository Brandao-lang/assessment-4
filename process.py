log_file = open("um-server-01.txt")


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


def melon_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        price = line[16:18]
        convert = int(price)
        if (line.find('Watermelon')) and (convert > 10):
            print(line)


sales_reports(log_file)

melon_reports(log_file)

# This block of code is assigning a text file filled with dates and deliveries to a variable called 'log_file'. Then a function called 'sales_reports' will remove trailing white spaces and loop over every line storing the first three characters of a line into the variable called 'day'. After storing the first three characters into the 'day' variable there is an if condition to check if the first three characters equals 'Tue' for tuesday. If it does it prints out the entire line, if it does not it moves on to the next line without printing anything. This whole process begins by passing 'log_file' to the 'sales_reports' function as a parameter.
