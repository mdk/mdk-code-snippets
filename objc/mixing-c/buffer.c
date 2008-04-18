#include "buffer.h"

void* alloc_buffer (int size)
{
	printf ("C: mallocing bytes...\n");
	return malloc (size);
}

void free_buffer (void *buf)
{
	if (buf) {
		printf ("C: freeing bytes...\n");
		free (buf);
	}
}
