.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;
.super Landroid/database/ContentObserver;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 94
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "mRcsServiceOwnObserver, onChange"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->queryOwn()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    .line 98
    return-void
.end method
