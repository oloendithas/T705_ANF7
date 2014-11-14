.class public final Lcom/samsung/javaomp/compiler/JavaParser$ModifierSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/javaomp/compiler/JavaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifierSet"
.end annotation


# static fields
.field public static final ABSTRACT:I = 0x8

.field public static final FINAL:I = 0x20

.field public static final NATIVE:I = 0x80

.field public static final PRIVATE:I = 0x4

.field public static final PROTECTED:I = 0x2

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x10

.field public static final STRICTFP:I = 0x1000

.field public static final SYNCHRONIZED:I = 0x40

.field public static final TRANSIENT:I = 0x100

.field public static final VOLATILE:I = 0x200


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAbstract(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isFinal(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isNative(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPrivate(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isProtected(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPublic(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isStatic(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isStrictfp(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isSynchronized(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isTransient(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVolatile(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static removeModifier(II)I
    .registers 3

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method
