.class public final Ljava/lang/reflect/Method;
.super Ljava/lang/reflect/AccessibleObject;
.source "Method.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# static fields
.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field public static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private genericExceptionTypes:Llibcore/reflect/ListOfTypes;

.field private genericParameterTypes:Llibcore/reflect/ListOfTypes;

.field private genericReturnType:Ljava/lang/reflect/Type;

.field private volatile genericTypesAreInitialized:Z

.field private final methodDexIndex:I

.field private name:Ljava/lang/String;

.field private parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private slot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/reflect/Method$1;

    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    .line 280
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Ljava/lang/reflect/Method;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 1
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "slot"    # I
    .param p7, "methodDexIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "declaring":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "exceptTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p4, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z

    .line 116
    iput-object p1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    .line 117
    iput-object p5, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    .line 118
    iput p6, p0, Ljava/lang/reflect/Method;->slot:I

    .line 119
    iput-object p2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    .line 120
    iput-object p3, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    .line 121
    iput-object p4, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    .line 122
    iput p7, p0, Ljava/lang/reflect/Method;->methodDexIndex:I

    .line 123
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Method;

    .prologue
    .line 48
    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Method;

    .prologue
    .line 48
    iget-object v0, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method static native getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method static native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation
.end method

.method private native getDefaultValue(Ljava/lang/Class;I)Ljava/lang/Object;
.end method

.method static native getMethodModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation
.end method

.method static native getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;
.end method

.method private getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v1, "result":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 579
    iget-object v2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    iget-object v2, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private declared-synchronized initGenericTypes()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "signatureAttribute":Ljava/lang/String;
    new-instance v0, Llibcore/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 106
    .local v0, "parser":Llibcore/reflect/GenericSignatureParser;
    iget-object v2, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 107
    iget-object v2, v0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 108
    iget-object v2, v0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    .line 109
    iget-object v2, v0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    .line 110
    iget-object v2, v0, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v0    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v1    # "signatureAttribute":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native invokeNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method static native isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method static noAnnotations(I)[[Ljava/lang/annotation/Annotation;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 286
    new-array v0, p0, [[Ljava/lang/annotation/Annotation;

    .line 287
    .local v0, "annotations":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 288
    sget-object v2, Ljava/lang/reflect/Method;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v2, v0, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    if-ne p0, p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    instance-of v3, p1, Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    move v1, v2

    .line 377
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 379
    check-cast v0, Ljava/lang/reflect/Method;

    .line 382
    .local v0, "rhs":Ljava/lang/reflect/Method;
    iget-object v3, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget-object v4, v0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    iget-object v4, v0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    iget-object v4, v0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iget-object v4, v0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
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
    .line 263
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Method;->getDefaultValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDexMethodIndex()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Ljava/lang/reflect/Method;->methodDexIndex:I

    return v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    goto :goto_0
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 235
    iget-object v0, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 216
    iget-object v0, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 253
    iget-object v0, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 304
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/reflect/Method;->noAnnotations(I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 307
    .end local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    :cond_0
    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "annotation":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 132
    iget-object v0, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 512
    if-nez p2, :cond_0

    .line 513
    sget-object p2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 515
    :cond_0
    iget-object v3, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget-object v4, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iget-object v5, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    iget v6, p0, Ljava/lang/reflect/Method;->slot:I

    iget-boolean v7, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Method;->invokeNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
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
    .line 272
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isBridge()Z
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 329
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 339
    .local v0, "modifiers":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVarArgs()Z
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 319
    .local v0, "modifiers":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v5, 0x20

    const/4 v6, 0x0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    .line 164
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 165
    .local v2, "modifier":I
    if-eqz v2, :cond_0

    .line 166
    and-int/lit16 v4, v2, -0xc1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 171
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 173
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 174
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 175
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .end local v1    # "i":I
    :cond_3
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v4}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/AccessibleObject;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 185
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    invoke-static {v4, v6}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/AccessibleObject;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 189
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    invoke-static {v4, v6}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 192
    .local v0, "genericExceptionTypeArray":[Ljava/lang/reflect/Type;
    array-length v4, v0

    if-lez v4, :cond_4

    .line 193
    const-string v4, " throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/AccessibleObject;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    .line 196
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    :cond_0
    iget-object v1, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 559
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
