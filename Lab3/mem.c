#include <stdio.h>//stack
#include <stdlib.h>//stack
#include <malloc.h>//stack

int main() {//stack
	int num; //stack
	int *ptr; //heap
	int **handle; //heap
    
	num = 14; //stack, allocated
	ptr = (int *)malloc(2 * sizeof(int)); //heap, allocated, leak
	handle = &ptr; //heap,allocated
	*ptr = num; //heap, allocated
	ptr = &num; //heap, allocated
	handle = (int **)malloc(1 * sizeof(int **));//heap, allocated, leak
}

//C1. Num is a stack, ptr and handle are heap
//C2. All memory gets allocated but not freed
//C3. The memory is in both the stack and the heap but mostly in the heap, refer to C1
//C4. Yes, because none of the memory is freed
