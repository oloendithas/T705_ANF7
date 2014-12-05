.class Lcom/android/keyguard/KeyguardHostView$13;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/CameraWidgetFrame$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 2223
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSliderHandleAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    .line 2244
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 2246
    .local v0, "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_10

    .line 2247
    invoke-virtual {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 2249
    :cond_10
    return-void
.end method


# virtual methods
.method public onCameraLaunchedSuccessfully()V
    .registers 3

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    .line 2234
    :cond_1f
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView$13;->setSliderHandleAlpha(F)V

    .line 2235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$13;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 2236
    return-void
.end method

.method public onCameraLaunchedUnsuccessfully()V
    .registers 2

    .prologue
    .line 2240
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView$13;->setSliderHandleAlpha(F)V

    .line 2241
    return-void
.end method

.method public onLaunchingCamera()V
    .registers 2

    .prologue
    .line 2226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView$13;->setSliderHandleAlpha(F)V

    .line 2227
    return-void
.end method
