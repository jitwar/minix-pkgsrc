$NetBSD$

* Avoid getline conflict

--- lib/getline.c.orig	2005-04-04 20:46:05.000000000 +0000
+++ lib/getline.c
@@ -155,7 +155,7 @@ getstr (lineptr, n, stream, terminator, 
 }
 
 int
-getline (lineptr, n, stream)
+getline_cvs (lineptr, n, stream)
      char **lineptr;
      size_t *n;
      FILE *stream;
