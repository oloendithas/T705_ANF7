.class Lcom/android/keyguard/KeyguardViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;

.field final synthetic val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;Landroid/os/IBinder;)V
    .registers 4

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$2;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager$2;->val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardViewManager$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$2;->val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$2;->val$token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 649
    :goto_7
    return-void

    .line 646
    :catch_8
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception calling onShown():"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
