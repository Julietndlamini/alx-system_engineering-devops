#!/usr/bin/env python3

import sys

def parse_transaction(line):
    sender, receiver, *flags = line.split()
    return sender, receiver, " ".join(flags)

def main():
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <log_file>")
        sys.exit(1)

    log_file = sys.argv[1]
    with open(log_file) as f:
        for line in f:
            sender, receiver, flags = parse_transaction(line.strip())
            print(f"{sender},{receiver},{flags}")

if __name__ == "__main__":
    main()
