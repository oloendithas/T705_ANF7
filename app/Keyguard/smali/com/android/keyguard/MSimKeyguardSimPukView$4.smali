.class Lcom/android/keyguard/MSimKeyguardSimPukView$4;
.super Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # I

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .registers 4
    .param p1, "success"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView$4;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method
