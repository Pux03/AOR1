#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

extern void funkcija(char broj_elemenata, int niz, int* x, int* y, int a);

int main() {
	char broj_elemenata;
	int niz[100];
	int A;
	
	printf("Unesi broj elemenata niza: \n");
	scanf("%hhd", &broj_elemenata);

	printf("Unesi elemente niza: \n");
	for (int i = 0; i < broj_elemenata; i++)
	{
		scanf("%d", niz + i);
	}
	
	printf("Unesi vrednost skalara A: \n");
	scanf("%d", &A);
	
	funkcija(broj_elemenata, niz, &niz[0], &niz[broj_elemenata - 1], &A);

	for (int i = 0; i < broj_elemenata; i++)
	{
		printf("%d ", niz[i]);
	}
	return 0;
}
