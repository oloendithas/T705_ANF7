.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackViewImpl"
.end annotation


# instance fields
.field private final mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mFfButton:Landroid/widget/ImageButton;

.field private final mPlaybackSeek:Landroid/widget/SeekBar;

.field private final mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private final mRateDecreaseButton:Landroid/widget/ImageButton;

.field private final mRateIncreaseButton:Landroid/widget/ImageButton;

.field private final mRewButton:Landroid/widget/ImageButton;

.field private final mStartStopButton:Landroid/widget/ImageButton;

.field private final mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "activityReference"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "playbackLayout"    # Landroid/view/View;

    .prologue
    .line 4720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4721
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4722
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4723
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4724
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    .line 4725
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    .line 4726
    const v0, 0x7f0903d3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    .line 4727
    const v0, 0x7f0903dc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    .line 4731
    const v0, 0x7f0903d1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 4733
    const v0, 0x7f0903d4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    .line 4735
    const v0, 0x7f0903d5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    .line 4737
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    const v0, 0x7f0903d7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0903d8

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0903d9

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v3, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    .line 4743
    const v0, 0x7f0903db

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRewButton:Landroid/widget/ImageButton;

    .line 4745
    const v0, 0x7f0903dd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mFfButton:Landroid/widget/ImageButton;

    .line 4747
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 4943
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 4865
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableProximitySensor()V
    .locals 2

    .prologue
    .line 4836
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 4837
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    .line 4838
    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/ProximitySensorAware;->disableProximitySensor(Z)V

    .line 4840
    :cond_0
    return-void
.end method

.method public disableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4893
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4894
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4895
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4896
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4897
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4898
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4899
    return-void
.end method

.method public enableProximitySensor()V
    .locals 2

    .prologue
    .line 4827
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 4828
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    .line 4829
    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/contacts/ProximitySensorAware;->enableProximitySensor()V

    .line 4831
    :cond_0
    return-void
.end method

.method public enableUiElements()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4910
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4911
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4912
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4913
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4915
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4916
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 4917
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 4918
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 4752
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 4753
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4754
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4756
    :cond_0
    return-void
.end method

.method public getDataSourceContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 4769
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesiredClipPosition()I
    .locals 1

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isSpeakerPhoneOn()Z
    .locals 1

    .prologue
    .line 4948
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public playbackError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->disableUiElements()V

    .line 4904
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    const v1, 0x7f0e01e2

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 4905
    const-string v0, "CallDetailActivity"

    const-string v1, "Could not play voicemail"

    invoke-static {v0, v1, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4906
    return-void
.end method

.method public playbackStarted()V
    .locals 2

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f020734

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4817
    return-void
.end method

.method public playbackStopped()V
    .locals 2

    .prologue
    .line 4821
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f020738

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4822
    return-void
.end method

.method public queryHasContent(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 4928
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4929
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5700()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4932
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4933
    const-string v1, "has_content"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_0

    move v1, v7

    .line 4937
    :goto_0
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 4939
    :goto_1
    return v1

    :cond_0
    move v1, v8

    .line 4933
    goto :goto_0

    .line 4937
    :cond_1
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    move v1, v8

    .line 4939
    goto :goto_1

    .line 4937
    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    throw v1
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4845
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4761
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 4762
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4763
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4765
    :cond_0
    return-void
.end method

.method public sendFetchVoicemailRequest(Landroid/net/Uri;)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 4922
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4923
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4924
    return-void
.end method

.method public setClipPosition(II)V
    .locals 4
    .param p1, "clipPositionInMillis"    # I
    .param p2, "clipLengthInMillis"    # I

    .prologue
    .line 4854
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4855
    .local v1, "seekBarPosition":I
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4856
    .local v0, "seekBarMax":I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 4857
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 4859
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4860
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    sub-int v3, v0, v1

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->formatAsMinutesAndSeconds(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5600(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 4862
    return-void
.end method

.method public setCtrlListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 4799
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4800
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4801
    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 1
    .param p1, "millis"    # Ljava/lang/String;

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setDurationText(Ljava/lang/String;)V

    .line 4972
    return-void
.end method

.method public setFetchContentTimeout()V
    .locals 2

    .prologue
    .line 4882
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->disableUiElements()V

    .line 4883
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    const v1, 0x7f0e01e5

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 4884
    return-void
.end method

.method public setIsBuffering()V
    .locals 2

    .prologue
    .line 4870
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->disableUiElements()V

    .line 4871
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    const v1, 0x7f0e01e3

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 4872
    return-void
.end method

.method public setIsFetchingContent()V
    .locals 2

    .prologue
    .line 4876
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->disableUiElements()V

    .line 4877
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    const v1, 0x7f0e01e4

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 4878
    return-void
.end method

.method public setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 4811
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4812
    return-void
.end method

.method public setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4774
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4775
    return-void
.end method

.method public setRateDisplay(FI)V
    .locals 5
    .param p1, "rate"    # F
    .param p2, "stringResourceId"    # I

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mTextController:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 4807
    return-void
.end method

.method public setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4779
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4780
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 4953
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4954
    if-eqz p1, :cond_0

    .line 4955
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f020741

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4959
    :goto_0
    return-void

    .line 4957
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f020742

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4794
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4795
    return-void
.end method

.method public setStartStopListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4784
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4785
    return-void
.end method

.method public setStopListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4790
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 4963
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mActivityReference:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 4964
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4965
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 4967
    :cond_0
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4850
    return-void
.end method
