.class Lcom/android/keyguard/KeyguardTransportControlView$2;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$2;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$2;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->resetToMetadata()V

    .line 172
    return-void
.end method
