.class Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;Z)V
    .registers 3

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    iput-boolean p2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 247
    return-void
.end method
