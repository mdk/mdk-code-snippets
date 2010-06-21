#include <gtk/gtk.h>
#include <webkit/webkit.h>

int main(int argc, char *argv[] )
{
    GtkWidget *window;
    WebKitWebView *webview;
    
    g_thread_init(NULL);
    gtk_init(&argc, &argv);
    
    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    webview = (WebKitWebView *) webkit_web_view_new();
    webkit_web_view_load_html_string(webview, "<p>Test!</p>", "file:///");

    gtk_container_add(window, webview);
    gtk_widget_show_all(window);
    
    gtk_main();
    
    return 0;
}
