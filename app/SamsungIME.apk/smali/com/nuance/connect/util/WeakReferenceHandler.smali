.class public Lcom/nuance/connect/util/WeakReferenceHandler;
.super Ljava/lang/Object;
.source "WeakReferenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/WeakReferenceHandler$WeakReferenceHandlerCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static create(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/nuance/connect/util/WeakReferenceHandler$WeakReferenceHandlerCallback;

    invoke-direct {v1, p0}, Lcom/nuance/connect/util/WeakReferenceHandler$WeakReferenceHandlerCallback;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0
.end method
