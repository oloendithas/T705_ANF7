.class public final Llibcore/icu/NativeCollation;
.super Ljava/lang/Object;
.source "NativeCollation.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static native closeCollator(J)V
.end method

.method public static native closeElements(J)V
.end method

.method public static native compare(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getAttribute(JI)I
.end method

.method public static native getCollationElementIterator(JLjava/lang/String;)I
.end method

.method public static native getMaxExpansion(JI)I
.end method

.method public static native getOffset(J)I
.end method

.method public static native getRules(J)Ljava/lang/String;
.end method

.method public static native getSortKey(JLjava/lang/String;)[B
.end method

.method public static native next(J)I
.end method

.method public static native openCollator(Ljava/lang/String;)J
.end method

.method public static native openCollatorFromRules(Ljava/lang/String;II)J
.end method

.method public static native previous(J)I
.end method

.method public static native reset(J)V
.end method

.method public static native safeClone(J)J
.end method

.method public static native setAttribute(JII)V
.end method

.method public static native setOffset(JI)V
.end method

.method public static native setText(JLjava/lang/String;)V
.end method
