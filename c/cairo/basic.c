#include <cairo.h>
#include <stdlib.h>
#include <stdio.h>

int main (int argc, char **argv)
{
	cairo_surface_t *surface = cairo_image_surface_create (CAIRO_FORMAT_ARGB32, 200, 200);
	cairo_t *cairo = cairo_create (surface);

	cairo_set_line_width (cairo, 16);
	cairo_move_to (cairo, 100, 20);
	cairo_line_to (cairo, 180, 180);
	cairo_line_to (cairo, 20, 180);
	cairo_close_path (cairo);
	cairo_stroke (cairo);

	cairo_surface_write_to_png (surface, "basic.png");

	return 0;
}
