.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;
.super Landroid/database/ContentObserver;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RcsServiceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    .line 70
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->query()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQuery()V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    .line 79
    return-void
.end method
