$NetBSD$

--- machine/sun2/sun2-mainbus.c.orig	2013-02-26 21:49:28.000000000 +0000
+++ machine/sun2/sun2-mainbus.c
@@ -616,11 +616,11 @@ TME_ELEMENT_NEW_DECL(tme_machine_sun2) {
   /* try to read in the IDPROM: */
   idprom_fp = fopen(idprom_filename, "r");
   if (idprom_fp == NULL) {
-    tme_output_append_error(_output, idprom_filename);
+    tme_output_append_error(_output, "%s", idprom_filename);
     return (errno);
   }
   if (fread(idprom, sizeof(tme_uint8_t), sizeof(idprom), idprom_fp) != sizeof(idprom)) {
-    tme_output_append_error(_output, idprom_filename);
+    tme_output_append_error(_output, "%s", idprom_filename);
     fclose(idprom_fp);
     return (ENOEXEC);
   }
