.class Lcom/android/keyguard/KeyguardTransportControlView$5;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mProgress:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .registers 3

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 249
    if-eqz p3, :cond_3a

    .line 250
    iput p2, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_39
    :goto_39
    return-void

    .line 255
    :cond_3a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateSeekDisplay()V

    goto :goto_39
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 267
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    if-gez v0, :cond_5

    .line 272
    :goto_4
    return-void

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->setProgress(I)V

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    goto :goto_4
.end method
