.class Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;
.super Landroid/os/Handler;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->getGuideAndSetting(Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$400(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Z)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v7

    .line 286
    .local v7, "newGuideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    if-nez v7, :cond_1

    .line 304
    .end local v7    # "newGuideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local v7    # "newGuideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_1
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->caculate()V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$500(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->equal(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setGuideLocation(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # setter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mGuideData:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    invoke-static {v0, v7}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$502(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    .end local v7    # "newGuideData":Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$600(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mSoundTone:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$700(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mVolumeFloat:F
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mVolumeFloat:F
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$800(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)F

    move-result v3

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method
