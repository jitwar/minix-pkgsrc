$NetBSD$

--- Src/DasherCore/SettingsStore.h.orig	2013-03-26 19:19:11.000000000 +0000
+++ Src/DasherCore/SettingsStore.h
@@ -18,9 +18,6 @@ namespace Dasher {
   class CParameterNotificationEvent;
 }
 
-class Dasher::CEventHandler;
-class Dasher::CParameterNotificationEvent;
-
 // Types that are parameters can be
 enum ParameterType
 {
