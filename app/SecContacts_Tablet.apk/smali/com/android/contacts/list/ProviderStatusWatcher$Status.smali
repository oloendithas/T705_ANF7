.class public Lcom/android/contacts/list/ProviderStatusWatcher$Status;
.super Ljava/lang/Object;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ProviderStatusWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field public final data:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    .line 77
    iput-object p2, p0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->data:Ljava/lang/String;

    .line 79
    return-void
.end method
