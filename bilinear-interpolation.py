#!/usr/bin/env python3

def get_number(min, max, name):
    n = int(input("{} [{}, {}]: ".format(name, min, max)))
    if n > max or n < min:
        print("Error! '{}' must be within the given interval.".format(name))
        quit()
    return n

def main():
    print("Starting bilinear interpolation tester...")
    Q00 = get_number(-512, 511, 'Q00')
    Q01 = get_number(-512, 511, 'Q01')
    Q10 = get_number(-512, 511, 'Q10')
    Q11 = get_number(-512, 511, 'Q11')
    x = get_number(0, 255, 'x')
    y = get_number(0, 255, 'y')
    x0 = get_number(0, 255, 'x0')
    y0 = get_number(0, 255, 'y0')

    # Start operations
    print("All data loaded.")
    print("Q00 = {}".format(Q00))
    print("Q01 = {}".format(Q01))
    print("Q10 = {}".format(Q10))
    print("Q11 = {}".format(Q11))
    print("x = {}".format(x))
    print("x0 = {}".format(x0))
    print("y = {}".format(y))
    print("y0 = {}".format(y0))

    # Cycle 1
    print("Cycle 1 start.")
    z1_pre = Q10 - Q00
    z1 = z1_pre/32
    z2 = x - x0
    print("[ADDER1, OP 1] Z1 (before truncation) = {}".format(z1_pre))
    print("[ADDER1, OP 1] Z1 = {}".format(z1))
    print("[ADDER2, OP 2] Z2 = {}".format(z2))
    print("Cycle 1 end.")

    # Cycle 2
    print("Cycle 2 start.")
    z3_pre = Q11 - Q01
    z3 = z3_pre/32
    z9 = y -y0
    z4 = z1 * z2
    print("[ADDER1, OP 8] Z3 (before truncation) = {}".format(z3_pre))
    print("[ADDER1, OP 8] Z3 = {}".format(z3))
    print("[ADDER2, OP 11] Z9 = {}".format(z9))
    print("[MULTIPLIER1, OP 3] Z4 = {}".format(z4))
    print("Cycle 2 end.")

    # Cycle 3
    print("Cycle 3 start.")
    z6 = z4 + Q00
    z5 = z2 * z3
    print("[ADDER1, OP 4] Z6 = {}".format(z6))
    print("[MULTIPLIER1, OP 9] Z5 = {}".format(z5))
    print("Cycle 3 end.")

    # Cycle 4
    print("Cycle 4 start.")
    z7 = z5 + Q01
    z8_pre = z7 - z6
    z8 = z8_pre/32
    print("[ADDER1, OP 10] Z7 = {}".format(z7))
    print("[ADDER2, OP 5] Z8 (before truncation) = {}".format(z8_pre))
    print("[ADDER2, OP 5] Z8 = {}".format(z8))
    print("Cycle 4 end.")

    # Cycle 5
    print("Cycle 5 start.")
    z10 = z8*z9
    print("[MULTIPLIER1, OP 6] Z10 = {}".format(z10))
    print("Cycle 5 end.")

    # Cycle 6
    print("Cycle 6 start.")
    P = z6 + z10
    print("[ADDER2, OP 7] P = {}".format(P))
    print("Cycle 6 end.")

if __name__ == "__main__":
    main()