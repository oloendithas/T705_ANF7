.class Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;
.super Ljava/lang/Object;
.source "LifeCallTime.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LifeCallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LifeCallTime;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LifeCallTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 125
    const-string v0, "LifeCallTime"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LifeCallTime;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->access$102(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LifeCallTime;

    const/16 v1, 0xb

    const/16 v2, 0xa

    # invokes: Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->getOemData(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->access$200(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;II)V

    .line 129
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 132
    const-string v0, "LifeCallTime"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LifeCallTime$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LifeCallTime;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LifeCallTime;->access$102(Lcom/sec/android/app/dialertab/calllog/LifeCallTime;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 134
    return-void
.end method
