# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"20677.0","system":"med"},{"code":"23688.0","system":"med"},{"code":"33914.0","system":"med"},{"code":"37268.0","system":"med"},{"code":"45981.0","system":"med"},{"code":"4741.0","system":"med"},{"code":"55350.0","system":"med"},{"code":"55933.0","system":"med"},{"code":"56005.0","system":"med"},{"code":"5928.0","system":"med"},{"code":"63718.0","system":"med"},{"code":"64014.0","system":"med"},{"code":"64710.0","system":"med"},{"code":"6865.0","system":"med"},{"code":"70005.0","system":"med"},{"code":"92695.0","system":"med"},{"code":"94104.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peptic-ulcer-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peptic-ulcer-disease-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peptic-ulcer-disease-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peptic-ulcer-disease-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
