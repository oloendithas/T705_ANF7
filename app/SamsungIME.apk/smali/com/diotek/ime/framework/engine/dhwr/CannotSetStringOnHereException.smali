.class public Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
.super Ljava/lang/Exception;
.source "CannotSetStringOnHereException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    const-string v0, "SamsungIME"

    const-string v1, "Cannot set string exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
