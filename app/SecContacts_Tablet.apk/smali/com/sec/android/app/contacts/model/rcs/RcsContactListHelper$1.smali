.class Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper$1;
.super Landroid/database/ContentObserver;
.source "RcsContactListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 45
    # getter for: Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange(boolean)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;

    # invokes: Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->doRcsContactQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->access$100(Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;)V

    .line 47
    return-void
.end method
