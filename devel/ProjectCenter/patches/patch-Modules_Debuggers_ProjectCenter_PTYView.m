$NetBSD$

Include util.h when compiling for NetBSD and OpenBSD.

--- Modules/Debuggers/ProjectCenter/PTYView.m.orig	2012-04-20 08:35:30.000000000 +0000
+++ Modules/Debuggers/ProjectCenter/PTYView.m
@@ -46,6 +46,10 @@
 #include <stropts.h>
 #endif
 
+#if defined (__NetBSD__) || defined (__OpenBSD__)
+#  include <util.h>
+#endif
+
 #ifndef NOTIFICATION_CENTER
 #define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]
 #endif
