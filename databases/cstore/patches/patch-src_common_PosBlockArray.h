$NetBSD$

Add missing header.

--- src/common/PosBlockArray.h.orig	2006-02-24 06:06:35.000000000 +0000
+++ src/common/PosBlockArray.h
@@ -33,7 +33,7 @@
 
 #include "PosBlock.h"
 #include "../Wrappers/CodingException.h"
-#include <iostream.h>
+#include <iostream>
 
 // Array of Position Blocks
 class PosBlockArray : public PosBlock
