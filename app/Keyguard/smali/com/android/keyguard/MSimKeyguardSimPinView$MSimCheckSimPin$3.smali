.class Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)V
    .registers 2

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->onSimCheckResponse(Z)V

    .line 298
    return-void
.end method
