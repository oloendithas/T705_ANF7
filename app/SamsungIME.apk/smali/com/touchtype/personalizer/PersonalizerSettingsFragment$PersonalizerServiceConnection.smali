.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizerServiceConnection"
.end annotation


# instance fields
.field private volatile mConnected:Z

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
    .param p2, "x1"    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->mConnected:Z

    move-object v0, p2

    .line 258
    check-cast v0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;

    .line 259
    .local v0, "binder":Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;->getService()Lcom/touchtype/personalizer/PersonalizerService;

    move-result-object v2

    # setter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;
    invoke-static {v1, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$402(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;

    .line 260
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setPreferenceState()V

    .line 261
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->mConnected:Z

    .line 266
    return-void
.end method
