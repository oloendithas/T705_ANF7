.class public Lcom/android/keyguard/KeyguardGuestSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardGuestSelectorView.java"


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardGuestSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardGuestSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    new-instance v0, Lcom/android/keyguard/KeyguardGuestSelectorView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardGuestSelectorView$3;-><init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardGuestSelectorView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardGuestSelectorView;->setMobileDataMultiUser()V

    return-void
.end method

.method private setMobileDataMultiUser()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 200
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 202
    .local v1, "currentUserId":I
    const/4 v2, 0x1

    .line 204
    .local v2, "state":Z
    if-nez v1, :cond_57

    .line 205
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data_configure"

    invoke-static {v5, v6, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_55

    move v2, v3

    .line 209
    :goto_22
    const-string v5, "KeyguardGuestSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataMultiUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 212
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz v2, :cond_69

    :goto_51
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    return-void

    :cond_55
    move v2, v4

    .line 205
    goto :goto_22

    .line 207
    :cond_57
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_67

    move v2, v4

    :goto_66
    goto :goto_22

    :cond_67
    move v2, v3

    goto :goto_66

    :cond_69
    move v3, v4

    .line 212
    goto :goto_51
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 218
    const-string v0, "KeyguardGuestSelectorView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    .line 221
    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 62
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .line 63
    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    if-eqz v2, :cond_55

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 66
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 68
    .local v0, "paddingBottom":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->setButtonPosition(III)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->setButtonPosition(III)V

    .line 76
    iget-object v2, p0, Lcom/android/keyguard/KeyguardGuestSelectorView;->mUsersGrid:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    new-instance v3, Lcom/android/keyguard/KeyguardGuestSelectorView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardGuestSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->setCallback(Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;)V

    .line 119
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingLeft":I
    :cond_55
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 120
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 122
    return-void
.end method
