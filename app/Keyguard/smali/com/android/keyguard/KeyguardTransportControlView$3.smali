.class Lcom/android/keyguard/KeyguardTransportControlView$3;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 175
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    const/4 v0, -0x1

    .line 178
    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$700(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_19

    .line 179
    const/16 v0, 0x58

    .line 185
    :cond_b
    :goto_b
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1000(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 189
    :cond_18
    return-void

    .line 180
    :cond_19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$800(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_24

    .line 181
    const/16 v0, 0x57

    goto :goto_b

    .line 182
    :cond_24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$900(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_b

    .line 183
    const/16 v0, 0x55

    goto :goto_b
.end method
