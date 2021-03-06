.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextViewWithMessagesController"
.end annotation


# static fields
.field private static final INVISIBLE:F = 0.0f

.field private static final LONG_ANIMATION_MS:J = 0x190L

.field private static final SHORT_ANIMATION_MS:J = 0xc8L

.field private static final VISIBLE:F = 1.0f


# instance fields
.field private final mDurationTextView:Landroid/widget/TextView;

.field private final mLock:Ljava/lang/Object;

.field private final mPermanentTextView:Landroid/widget/TextView;

.field private mRunnable:Ljava/lang/Runnable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTemporaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "permanentTextView"    # Landroid/widget/TextView;
    .param p2, "temporaryTextView"    # Landroid/widget/TextView;
    .param p3, "durationTextView"    # Landroid/widget/TextView;

    .prologue
    .line 4987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4980
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    .line 4988
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    .line 4989
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    .line 4990
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mDurationTextView:Landroid/widget/TextView;

    .line 4991
    return-void
.end method

.method static synthetic access$5800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 4975
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setDurationText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 4998
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4999
    return-void
.end method

.method public setPermanentText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 4994
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4995
    return-void
.end method

.method public setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "units"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 5002
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5003
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5004
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 5006
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    .line 5023
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5024
    monitor-exit v1

    .line 5025
    return-void

    .line 5024
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
