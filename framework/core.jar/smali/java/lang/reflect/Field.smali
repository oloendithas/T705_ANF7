.class public final Ljava/lang/reflect/Field;
.super Ljava/lang/reflect/AccessibleObject;
.source "Field.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# static fields
.field public static final ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOLEAN:C = 'Z'

.field private static final TYPE_BYTE:C = 'B'

.field private static final TYPE_CHAR:C = 'C'

.field private static final TYPE_DOUBLE:C = 'D'

.field private static final TYPE_FLOAT:C = 'F'

.field private static final TYPE_INTEGER:C = 'I'

.field private static final TYPE_LONG:C = 'J'

.field private static final TYPE_SHORT:C = 'S'


# instance fields
.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fieldDexIndex:I

.field private genericType:Ljava/lang/reflect/Type;

.field private volatile genericTypesAreInitialized:Z

.field private name:Ljava/lang/String;

.field private slot:I

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/reflect/Field$1;

    invoke-direct {v0}, Ljava/lang/reflect/Field$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Field;->ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "slot"    # I
    .param p5, "fieldDexIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z

    .line 95
    iput-object p1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    .line 96
    iput-object p2, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    .line 97
    iput-object p3, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    .line 98
    iput p4, p0, Ljava/lang/reflect/Field;->slot:I

    .line 99
    iput p5, p0, Ljava/lang/reflect/Field;->fieldDexIndex:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .prologue
    .line 45
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static native getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
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

.method private native getBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)C"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private static native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
.end method

.method private native getFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getFieldModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation
.end method

.method private native getIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)S"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private native getZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private declared-synchronized initGenericType()V
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "signatureAttribute":Ljava/lang/String;
    new-instance v0, Llibcore/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 115
    .local v0, "parser":Llibcore/reflect/GenericSignatureParser;
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Llibcore/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 116
    iget-object v2, v0, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    iput-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    .line 117
    iget-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    .line 120
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v1    # "signatureAttribute":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static native isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z
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

.method private native setBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCB)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCB)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCC)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCC)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCF)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCS)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 236
    instance-of v0, p1, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/Field;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 206
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x5a

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)Z

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x42

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)B

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x43

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)C

    move-result v0

    return v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

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
    .line 357
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDexFieldIndex()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Ljava/lang/reflect/Field;->fieldDexIndex:I

    return v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x44

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x46

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)F

    move-result v0

    return v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/reflect/Field;->initGenericType()V

    .line 197
    iget-object v0, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x4a

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)J

    move-result-wide v0

    return-wide v0
.end method

.method public getModifiers()I
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x53

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)S

    move-result v0

    return v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "annotation":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
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
    .line 215
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isEnumConstant()Z
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 180
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x4000

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
    .line 147
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 148
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZLjava/lang/Object;)V

    .line 586
    return-void
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 618
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x5a

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCZ)V

    .line 619
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x42

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCB)V

    .line 651
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x43

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCC)V

    .line 683
    return-void
.end method

.method public setDouble(Ljava/lang/Object;D)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x44

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/lang/reflect/Field;->setDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCD)V

    .line 715
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 746
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x46

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCF)V

    .line 747
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCI)V

    .line 779
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x4a

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/lang/reflect/Field;->setJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCJ)V

    .line 811
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x53

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCS)V

    .line 843
    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 161
    .local v0, "modifier":I
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    :cond_0
    iget-object v1, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/AccessibleObject;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 871
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/AccessibleObject;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 872
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    iget-object v1, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
