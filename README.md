# Assembly-Bubble-Sort
# Bubble Sort in Assembly

## Overview

This program implements the **Bubble Sort** algorithm in Assembly, which sorts an array of integers in ascending order. The code operates by repeatedly comparing and swapping adjacent elements if they are out of order. The algorithm terminates when no swaps are needed in a pass through the array, indicating that the array is sorted.

## Details

- **ORG $8000**: The program begins at memory address `$8000`.
- **A0 Register**: Holds the base address of the array in memory.
- **D0, D1, D2, D3 Registers**:
  - **D0**: Holds the current array element.
  - **D1**: Holds the next array element for comparison.
  - **D2**: Acts as a flag to determine if any swaps were made during a pass.
  - **D3**: Stores the loop counter and the length of the array during each pass.

## Code Sections

- **START**: Initializes the array address into `A0` and clears `D2` (swap flag) to indicate that no swaps have been made.
- **LOOP**: 
  - Loads two adjacent elements from the array (pointed to by `A0`) into `D0` and `D1`.
  - Compares `D0` with `D1`. If `D0` is greater, the program swaps the elements and sets `D2` to indicate a swap was made.
  - Advances to the next pair of elements and continues until all elements in the array are processed.
- **NOSWAP**:
  - If no swap is needed, increments the array pointer and decrements `D3` (loop counter).
  - If the array is sorted (`D2` remains unchanged), the algorithm terminates.
- **ARRAY**: Contains the list of integers to be sorted.
- **LEN**: Defines the length of the array.
