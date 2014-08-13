.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient dexClassDefIndex:I

.field private volatile transient dexIndicesInitialized:Z

.field private transient dexTypeIndex:I

.field private transient name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method private static arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "result":[Ljava/lang/Object;, "[TT;"
    .local p1, "head":[Ljava/lang/Object;, "[TT;"
    .local p2, "tail":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 1291
    array-length v0, p1

    invoke-static {p1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1292
    array-length v0, p1

    array-length v1, p2

    invoke-static {p2, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1293
    return-object p0
.end method

.method private static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private declared-synchronized computeDexIndices()V
    .locals 2

    .prologue
    .line 157
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/lang/Class;->dexIndicesInitialized:Z

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 159
    .local v0, "dex":Lcom/android/dex/Dex;
    invoke-static {p0}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->findTypeIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 160
    iget v1, p0, Ljava/lang/Class;->dexTypeIndex:I

    if-gez v1, :cond_1

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Ljava/lang/Class;->dexClassDefIndex:I

    .line 166
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/Class;->dexIndicesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v0    # "dex":Lcom/android/dex/Dex;
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    .restart local v0    # "dex":Lcom/android/dex/Dex;
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/lang/Class;->dexTypeIndex:I

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->findClassDefIndexFromTypeIndex(I)I

    move-result v1

    iput v1, p0, Ljava/lang/Class;->dexClassDefIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0    # "dex":Lcom/android/dex/Dex;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "shouldInitialize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 240
    if-nez p2, :cond_0

    .line 241
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 251
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 260
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    .line 253
    .end local v2    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 255
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v3, :cond_1

    .line 256
    check-cast v0, Ljava/lang/ExceptionInInitializerError;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 258
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method private static native getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation
.end method

.method private getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "searchSuperTypes"    # Z
    .param p3, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 455
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 457
    :cond_0
    if-nez p1, :cond_1

    .line 458
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :cond_1
    if-nez p4, :cond_2

    .line 461
    sget-object p4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 463
    :cond_2
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 464
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3

    .line 465
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 463
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p4}, Ljava/lang/Class;->getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    .line 471
    .local v4, "result":Ljava/lang/reflect/Member;
    :goto_1
    if-eqz v4, :cond_5

    if-eqz p3, :cond_7

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7

    .line 472
    :cond_5
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 468
    .end local v4    # "result":Ljava/lang/reflect/Member;
    :cond_6
    invoke-static {p0, p1, p4}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    goto :goto_1

    .line 474
    .restart local v4    # "result":Ljava/lang/reflect/Member;
    :cond_7
    return-object v4
.end method

.method private native getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method private static native getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method static native getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
.end method

.method private static native getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method static native getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private native getInnerClassName()Ljava/lang/String;
.end method

.method private static native getModifiers(Ljava/lang/Class;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 480
    invoke-static {v1, p1, p2}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    .line 481
    .local v5, "result":Ljava/lang/reflect/Member;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 496
    .end local v5    # "result":Ljava/lang/reflect/Member;
    :cond_0
    :goto_1
    return-object v5

    .line 479
    .restart local v5    # "result":Ljava/lang/reflect/Member;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 487
    .end local v5    # "result":Ljava/lang/reflect/Member;
    :cond_2
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_5

    .line 488
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 489
    .local v3, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v3, p1, p2}, Ljava/lang/Class;->getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    .line 490
    .restart local v5    # "result":Ljava/lang/reflect/Member;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 488
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 487
    .end local v3    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "result":Ljava/lang/reflect/Member;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 496
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 731
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 732
    invoke-static {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 733
    .local v5, "result":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 748
    .end local v5    # "result":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-object v5

    .line 731
    .restart local v5    # "result":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 739
    .end local v5    # "result":Ljava/lang/reflect/Field;
    :cond_2
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_5

    .line 740
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 741
    .local v3, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 742
    .restart local v5    # "result":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 740
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 739
    .end local v3    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "result":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 748
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 781
    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 782
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 780
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 787
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_3

    .line 788
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 789
    .local v4, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v4, p1}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 787
    .end local v4    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 792
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    return-void
.end method

.method private getPublicMethodsRecursive(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 894
    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 895
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 893
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 900
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_3

    .line 901
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 902
    .local v3, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicMethodsRecursive(Ljava/util/List;)V

    .line 901
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 900
    .end local v3    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 905
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    return-void
.end method

.method private native isDeclaredAnnotationPresent(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native newInstanceImpl()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1254
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1255
    return-object p0

    .line 1257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1271
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_1

    .line 1272
    const/4 p1, 0x0

    .line 1274
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1

    .line 1273
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1278
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native desiredAssertionStatus()Z
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 287
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "annotationType == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 291
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 304
    :goto_0
    return-object v2

    .line 295
    :cond_1
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_3

    .line 297
    invoke-direct {v1, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 299
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 304
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 8

    .prologue
    .line 325
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 328
    .local v2, "declaredAnnotations":[Ljava/lang/annotation/Annotation;
    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 329
    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .local v5, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v5, :cond_3

    .line 332
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 333
    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 334
    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 335
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-class v6, Ljava/lang/annotation/Inherited;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 336
    aget-object v6, v2, v3

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 331
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 342
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 343
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    return-object v6
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v1

    .line 355
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 364
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 370
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 378
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 395
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const/4 v0, 0x0

    .line 403
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 400
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ljava/lang/Class;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 417
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x1

    .line 274
    invoke-static {p0, v5}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v1

    .line 276
    .local v1, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 277
    invoke-static {v0, v5}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v2

    .line 278
    .local v2, "temp":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 279
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v3, v1, v2}, Ljava/lang/Class;->arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    check-cast v1, [Ljava/lang/Class;

    .line 276
    .restart local v1    # "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 282
    .end local v2    # "temp":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    return-object v1
.end method

.method public native getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "<init>"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 562
    const-string v0, "<init>"

    invoke-direct {p0, v0, v1, v1, p1}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 592
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 595
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 596
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_1
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 610
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 640
    invoke-direct {p0, p1, v1, v1, p2}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 641
    .local v0, "member":Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 642
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_0
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0    # "member":Ljava/lang/reflect/Member;
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 656
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getDex()Lcom/android/dex/Dex;
.end method

.method public getDexAnnotationDirectoryOffset()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1305
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    .line 1306
    .local v1, "dex":Lcom/android/dex/Dex;
    if-nez v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return v2

    .line 1309
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDexClassDefIndex()I

    move-result v0

    .line 1310
    .local v0, "classDefIndex":I
    if-ltz v0, :cond_0

    .line 1313
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex;->annotationDirectoryOffsetFromClassDefIndex(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .locals 1
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 1334
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "typeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1324
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1325
    .local v0, "internalName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public getDexClassDefIndex()I
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Ljava/lang/Class;->dexIndicesInitialized:Z

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Ljava/lang/Class;->computeDexIndices()V

    .line 179
    :cond_0
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    return v0
.end method

.method public getDexTypeIndex()I
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Ljava/lang/Class;->dexIndicesInitialized:Z

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Ljava/lang/Class;->computeDexIndices()V

    .line 193
    :cond_0
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    return v0
.end method

.method public native getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingMethod()Ljava/lang/reflect/Method;
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const/4 v0, 0x0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 720
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 723
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 724
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :cond_1
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 763
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 770
    sget-object v1, Ljava/lang/reflect/Field;->ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 771
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 6

    .prologue
    .line 801
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v4

    monitor-enter v4

    .line 802
    :try_start_0
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 803
    .local v2, "result":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    .line 804
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 806
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 812
    :goto_0
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .end local v0    # "annotationSignature":Ljava/lang/String;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    array-length v3, v2

    if-nez v3, :cond_2

    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :goto_1
    return-object v2

    .line 808
    .restart local v0    # "annotationSignature":Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_1
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 809
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 810
    iget-object v3, v1, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0

    .line 814
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 815
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    move-object v2, v3

    goto :goto_1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    .line 823
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 824
    .local v1, "genericSuperclass":Ljava/lang/reflect/Type;
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "annotationSignature":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 826
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 827
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 828
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 830
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_0
    invoke-static {v1}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3
.end method

.method public native getInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 857
    invoke-direct {p0, p1, v1, v1, p2}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 858
    .local v0, "member":Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 859
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 861
    :cond_0
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0    # "member":Ljava/lang/reflect/Member;
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 876
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsRecursive(Ljava/util/List;)V

    .line 883
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 884
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 913
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 931
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 5

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 1228
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1229
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 1230
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1231
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1232
    .local v0, "dot":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    .line 1234
    .end local v0    # "dot":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 1

    .prologue
    .line 977
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 988
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1003
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1004
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2

    .line 1005
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1007
    :goto_1
    return-object v3

    .line 991
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 992
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 993
    .local v0, "dot":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 994
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 999
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 996
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 1007
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1020
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1035
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1036
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2

    .line 1037
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1039
    :goto_1
    return-object v3

    .line 1023
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1025
    .local v0, "dot":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1026
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1031
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1028
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 1039
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1
.end method

.method public getSigners()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1051
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 946
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    :cond_0
    :goto_0
    return-object v1

    .line 950
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 953
    const-string v1, ""

    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 957
    :cond_3
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 960
    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 961
    .local v0, "dot":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 962
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public native getSuperclass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1072
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1074
    :cond_0
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1075
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1076
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1070
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isAnnotation()Z
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 1083
    const/16 v0, 0x2000

    .line 1084
    .local v0, "ACC_ANNOTATION":I
    invoke-static {p0, v2}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1085
    .local v1, "mod":I
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x1

    .line 1089
    if-nez p1, :cond_0

    .line 1090
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "annotationType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1093
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1105
    :cond_1
    :goto_0
    return v1

    .line 1097
    :cond_2
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v2}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1098
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 1099
    invoke-direct {v0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1098
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 1105
    .end local v0    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native isAnonymousClass()Z
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 1118
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isAssignableFrom(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public isEnum()Z
    .locals 5

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Enum;

    if-eq v3, v4, :cond_0

    .line 1142
    :goto_0
    return v2

    .line 1141
    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v0

    .line 1142
    .local v0, "mod":I
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public native isInstance(Ljava/lang/Object;)Z
.end method

.method public native isInterface()Z
.end method

.method public isLocalClass()Z
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1166
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 1168
    .local v0, "enclosed":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return v1

    .end local v0    # "enclosed":Z
    :cond_1
    move v0, v2

    .line 1166
    goto :goto_0

    .restart local v0    # "enclosed":Z
    :cond_2
    move v1, v2

    .line 1168
    goto :goto_1
.end method

.method public isMemberClass()Z
    .locals 1

    .prologue
    .line 1176
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isPrimitive()Z
.end method

.method public isSynthetic()Z
    .locals 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 1188
    const/16 v0, 0x1000

    .line 1189
    .local v0, "ACC_SYNTHETIC":I
    invoke-static {p0, v2}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1190
    .local v1, "mod":I
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->newInstanceImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1215
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1218
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interface "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "class "

    goto :goto_1
.end method
