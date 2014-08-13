.class final Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"

# interfaces
.implements Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackViewImpl"
.end annotation


# instance fields
.field private final mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mFfButton:Landroid/widget/ImageButton;

.field private final mPlaybackSeek:Landroid/widget/SeekBar;

.field private final mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private final mRateDecreaseButton:Landroid/widget/ImageButton;

.field private final mRateIncreaseButton:Landroid/widget/ImageButton;

.field private final mRewButton:Landroid/widget/ImageButton;

.field private final mStartStopButton:Landroid/widget/ImageButton;

.field private final mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "activityReference"    # Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "playbackLayout"    # Landroid/view/View;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    .line 201
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    .line 202
    const v0, 0x7f0903d3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    .line 203
    const v0, 0x7f0903dc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    .line 205
    const v0, 0x7f0903d1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 207
    const v0, 0x7f0903d4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    .line 209
    const v0, 0x7f0903d5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    .line 211
    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v0, 0x7f0903d7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0903d8

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    .line 215
    const v0, 0x7f0903db

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRewButton:Landroid/widget/ImageButton;

    .line 217
    const v0, 0x7f0903dd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mFfButton:Landroid/widget/ImageButton;

    .line 219
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

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
    .line 334
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableProximitySensor()V
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 306
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/ProximitySensorAware;->disableProximitySensor(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public disableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 367
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    return-void
.end method

.method public enableProximitySensor()V
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/ProximitySensorAware;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lcom/android/contacts/ProximitySensorAware;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/contacts/ProximitySensorAware;->enableProximitySensor()V

    .line 300
    :cond_0
    return-void
.end method

.method public enableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 379
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 384
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 224
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 227
    :cond_0
    return-void
.end method

.method public getDataSourceContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesiredClipPosition()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isSpeakerPhoneOn()Z
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public playbackError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0e01e2

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 374
    const-string v0, "VoicemailPlayback"

    const-string v1, "Could not play voicemail"

    invoke-static {v0, v1, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    return-void
.end method

.method public playbackStarted()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f020699

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    return-void
.end method

.method public playbackStopped()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f0206cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    return-void
.end method

.method public queryHasContent(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 394
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    const-string v1, "has_content"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_0

    move v1, v7

    .line 403
    :goto_0
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 405
    :goto_1
    return v1

    :cond_0
    move v1, v8

    .line 399
    goto :goto_0

    .line 403
    :cond_1
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    move v1, v8

    .line 405
    goto :goto_1

    .line 403
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
    .line 313
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 232
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    :cond_0
    return-void
.end method

.method public sendFetchVoicemailRequest(Landroid/net/Uri;)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method public setClipPosition(II)V
    .locals 4
    .param p1, "clipPositionInMillis"    # I
    .param p2, "clipLengthInMillis"    # I

    .prologue
    .line 323
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 324
    .local v1, "seekBarPosition":I
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 325
    .local v0, "seekBarMax":I
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 329
    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    sub-int v3, v0, v1

    # invokes: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->formatAsMinutesAndSeconds(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->access$100(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setCtrlListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 265
    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 0
    .param p1, "millis"    # Ljava/lang/String;

    .prologue
    .line 436
    return-void
.end method

.method public setFetchContentTimeout()V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 352
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0e01e5

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setIsBuffering()V
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0e01e3

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public setIsFetchingContent()V
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->disableUiElements()V

    .line 346
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const v1, 0x7f0e01e4

    invoke-direct {p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setPermanentText(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 281
    return-void
.end method

.method public setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateDecreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method

.method public setRateDisplay(FI)V
    .locals 5
    .param p1, "rate"    # F
    .param p2, "stringResourceId"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mTextController:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 276
    return-void
.end method

.method public setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mRateIncreaseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f0206d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f0206d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    return-void
.end method

.method public setStartStopListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method public setStopListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 260
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mActivityReference:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->get()Landroid/app/Activity;

    move-result-object v0

    .line 430
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 319
    return-void
.end method
