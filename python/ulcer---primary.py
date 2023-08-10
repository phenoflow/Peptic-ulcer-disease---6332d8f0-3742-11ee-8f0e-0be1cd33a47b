# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"14C1.00","system":"readv2"},{"code":"102177.0","system":"med"},{"code":"106330.0","system":"med"},{"code":"109546.0","system":"med"},{"code":"110244.0","system":"med"},{"code":"11104.0","system":"med"},{"code":"11124.0","system":"med"},{"code":"1262.0","system":"med"},{"code":"14671.0","system":"med"},{"code":"15175.0","system":"med"},{"code":"15403.0","system":"med"},{"code":"15821.0","system":"med"},{"code":"15979.0","system":"med"},{"code":"18001.0","system":"med"},{"code":"18027.0","system":"med"},{"code":"18324.0","system":"med"},{"code":"18625.0","system":"med"},{"code":"18654.0","system":"med"},{"code":"19928.0","system":"med"},{"code":"22918.0","system":"med"},{"code":"23082.0","system":"med"},{"code":"23087.0","system":"med"},{"code":"23487.0","system":"med"},{"code":"24040.0","system":"med"},{"code":"24342.0","system":"med"},{"code":"2814.0","system":"med"},{"code":"28366.0","system":"med"},{"code":"2877.0","system":"med"},{"code":"29317.0","system":"med"},{"code":"29771.0","system":"med"},{"code":"30054.0","system":"med"},{"code":"3101.0","system":"med"},{"code":"32856.0","system":"med"},{"code":"33438.0","system":"med"},{"code":"3462.0","system":"med"},{"code":"352.0","system":"med"},{"code":"36461.0","system":"med"},{"code":"36583.0","system":"med"},{"code":"37620.0","system":"med"},{"code":"37643.0","system":"med"},{"code":"40997.0","system":"med"},{"code":"42274.0","system":"med"},{"code":"44073.0","system":"med"},{"code":"44284.0","system":"med"},{"code":"44309.0","system":"med"},{"code":"44324.0","system":"med"},{"code":"44335.0","system":"med"},{"code":"44637.0","system":"med"},{"code":"45184.0","system":"med"},{"code":"45304.0","system":"med"},{"code":"48730.0","system":"med"},{"code":"48946.0","system":"med"},{"code":"48951.0","system":"med"},{"code":"50048.0","system":"med"},{"code":"50497.0","system":"med"},{"code":"51406.0","system":"med"},{"code":"52138.0","system":"med"},{"code":"52313.0","system":"med"},{"code":"52323.0","system":"med"},{"code":"53081.0","system":"med"},{"code":"53126.0","system":"med"},{"code":"53336.0","system":"med"},{"code":"53669.0","system":"med"},{"code":"53797.0","system":"med"},{"code":"53822.0","system":"med"},{"code":"5521.0","system":"med"},{"code":"57958.0","system":"med"},{"code":"60249.0","system":"med"},{"code":"60346.0","system":"med"},{"code":"63001.0","system":"med"},{"code":"6333.0","system":"med"},{"code":"63482.0","system":"med"},{"code":"63582.0","system":"med"},{"code":"64111.0","system":"med"},{"code":"64165.0","system":"med"},{"code":"64556.0","system":"med"},{"code":"64913.0","system":"med"},{"code":"657.0","system":"med"},{"code":"65737.0","system":"med"},{"code":"66092.0","system":"med"},{"code":"670.0","system":"med"},{"code":"67082.0","system":"med"},{"code":"67356.0","system":"med"},{"code":"67711.0","system":"med"},{"code":"68661.0","system":"med"},{"code":"69663.0","system":"med"},{"code":"70390.0","system":"med"},{"code":"70456.0","system":"med"},{"code":"71150.0","system":"med"},{"code":"71403.0","system":"med"},{"code":"71881.0","system":"med"},{"code":"71897.0","system":"med"},{"code":"71904.0","system":"med"},{"code":"73338.0","system":"med"},{"code":"73417.0","system":"med"},{"code":"73697.0","system":"med"},{"code":"85989.0","system":"med"},{"code":"89023.0","system":"med"},{"code":"89227.0","system":"med"},{"code":"89234.0","system":"med"},{"code":"93436.0","system":"med"},{"code":"94397.0","system":"med"},{"code":"96090.0","system":"med"},{"code":"96622.0","system":"med"},{"code":"96628.0","system":"med"},{"code":"97993.0","system":"med"},{"code":"9853.0","system":"med"},{"code":"99430.0","system":"med"},{"code":"99670.0","system":"med"},{"code":"9981.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peptic-ulcer-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ulcer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ulcer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ulcer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
