.class Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;
.super Landroid/os/Handler;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->showSearchPendingIfNotComplete(I)V

    .line 473
    return-void
.end method
