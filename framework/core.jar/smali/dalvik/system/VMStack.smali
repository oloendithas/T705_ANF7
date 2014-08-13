.class public final Ldalvik/system/VMStack;
.super Ljava/lang/Object;
.source "VMStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fillStackTraceElements(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)I
.end method

.method public static native getCallingClassLoader()Ljava/lang/ClassLoader;
.end method

.method public static native getClasses(I)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static getClosestUserClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 7
    .param p0, "bootstrap"    # Ljava/lang/ClassLoader;
    .param p1, "system"    # Ljava/lang/ClassLoader;

    .prologue
    .line 67
    const/4 v6, -0x1

    invoke-static {v6}, Ldalvik/system/VMStack;->getClasses(I)[Ljava/lang/Class;

    move-result-object v5

    .line 68
    .local v5, "stackClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 69
    .local v4, "stackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 70
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    if-eq v3, p0, :cond_0

    if-eq v3, p1, :cond_0

    .line 74
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "stackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v3

    .line 68
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    .restart local v4    # "stackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "stackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static native getStackClass2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
.end method
