import random
import string

# returns random line from any passed file
def randomSelect(file):
    f = open(file, 'r')
    choice = random.choice(list(f))
    f.close()
    return choice[:len(choice) - 1]


# returns a random zip
def randomZip():
    code = ""
    for i in range(0, 3):
        code += random.choice(string.ascii_uppercase) + str(
            random.randrange(0, 10))
    return code[:3] + code[3:]


# returns a random street address
def randomAddress(file):
    f = open(file, 'r')
    street = random.choice(list(f))
    f.close()
    street = street[:len(street) - 1] + ' '
    return str(random.randrange(1, 1000)) + ' ' + street + random.choice(
        ["Road", "Way", "Street", "Boulevard", "Avenue", "Drive"])


# returns a random DOB
def randomDOB():
    return (str(random.randrange(1930, 2000))
            + '-' + '{:0>2}'.format(random.randrange(1, 13))
            + '-' + '{:0>2}'.format(random.randrange(1, 30)))


def randomPhone():
    return '({:0>3})-{:0>3}-{:0>4}'.format(random.randint(0, 999),
                                           random.randint(0, 999),
                                           random.randint(0, 9999))


def genCustomerData(n, outFile = 'customer_data.txt'):
    f = open(outFile, 'w+')
    for i in range(n):
        id = i
        last = randomSelect("last-cleaned.txt")
        first = randomSelect("first-cleaned.txt")
        address = '\"' + randomAddress("allstreets.txt") + '\"'
        city = '\"' + randomSelect("city_names.txt") + '\"'
        state = '\"' + randomSelect("states.txt") + '\"'
        zip = randomZip()
        phone = randomPhone()
        dob = randomDOB()
        tax_id = '{:0>9}'.format(random.randint(0, 1e7-1))
        avg_late = random.randint(0, 20)
        num_late = random.randint(0, 20)
        cols = [id, last, first, address, city, state, zip, phone, dob, tax_id,
                avg_late, num_late]
        line = ','.join([str(x) for x in cols])
        f.write(line + '\n')
    f.close()


def genEmployeeData(n, outFile='employee_data.txt'):
    f = open(outFile, 'w+')
    for i in range(n):
        id = i
        last = randomSelect("last-cleaned.txt")
        first = randomSelect("first-cleaned.txt")
        phone = randomPhone()
        job_id = random.randint(1, 2)
        cols = [id, last, first, phone, job_id]
        line = ','.join([str(x) for x in cols])
        f.write(line + '\n')
    f.close()


if __name__ == '__main__':
    genEmployeeData(50)
    genCustomerData(50)
