.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field private static final THE_ONE:Lsun/misc/Unsafe;

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    .line 33
    sget-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native arrayBaseOffset0(Ljava/lang/Class;)I
.end method

.method private static native arrayIndexScale0(Ljava/lang/Class;)I
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 50
    .local v0, "calling":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unsafe access denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    sget-object v1, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-object v1
.end method

.method private static native objectFieldOffset0(Ljava/lang/reflect/Field;)J
.end method


# virtual methods
.method public native allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for array classes only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-static {p1}, Lsun/misc/Unsafe;->arrayBaseOffset0(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for array classes only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    invoke-static {p1}, Lsun/misc/Unsafe;->arrayIndexScale0(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-static {p1}, Lsun/misc/Unsafe;->objectFieldOffset0(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public park(ZJ)V
    .locals 1
    .param p1, "absolute"    # Z
    .param p2, "time"    # J

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkUntil(J)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_0
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public unpark(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 338
    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 339
    check-cast p1, Ljava/lang/Thread;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Thread;->unpark()V

    .line 343
    return-void

    .line 341
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid for Threads only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
