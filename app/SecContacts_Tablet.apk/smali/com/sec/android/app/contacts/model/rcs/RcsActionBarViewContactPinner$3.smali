.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;
.super Landroid/database/ContentObserver;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 354
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "mRcsServiceOwnObserver, onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryOwn()V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    # getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$600(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    .line 361
    :cond_0
    return-void
.end method
