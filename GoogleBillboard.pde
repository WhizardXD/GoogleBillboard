public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069";
public boolean temp1, temp2 = false;

public void setup() {
    //your code here
    int x = 2;
    int a = 2;
    int y;
    int b;
    String sample;
    double dNum;
    int counter = 0;

    while (temp1 == false) {
        y = x + 10;
        sample =  e.substring(x,y);
        dNum = Double.parseDouble(sample);

        if (isPrime(dNum)) {
            temp1 = true;
            System.out.println(dNum);
        } else {
            x++;
        }
    }

    while (temp2 == false) {
        b = a + 10;
        sample = e.substring(a,b);
        // println("(" + a + "," + b + ")");

        if (addsTo49(sample)) {
            System.out.println(sample);
            counter++;
            a++;
        } else {
            a++;
        }
        if (counter == 5) {
            temp2 = true;
        }
    }
}

public boolean isPrime(double dNumb) {
    //your code here
    if (dNumb > 1) {
        for (int i = 2; i <= (int)(Math.sqrt(dNumb)); i++) {
            if (dNumb % i == 0) {
                return false;
            }
        }
    } else {
        return false;
    }
    return true;
}

public boolean addsTo49(String str) {
    int sum = 0;
    int[] arr = new int[str.length()];
    for (int i = 0; i < str.length(); i++) {
        int num = Integer.parseInt(str.substring(i, i+1));
        arr[i] = num;
    }
    for (int temp: arr) {
        sum += temp;
    }
    if (sum == 49) {
        return true;
    }
    return false;
}