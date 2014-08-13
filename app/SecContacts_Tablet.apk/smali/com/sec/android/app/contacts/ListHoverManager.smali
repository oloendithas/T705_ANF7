.class public Lcom/sec/android/app/contacts/ListHoverManager;
.super Ljava/lang/Object;
.source "ListHoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;
    }
.end annotation


# instance fields
.field private isFonblet:Z

.field private isUsingTwoPanel:Z

.field private final mListHoverListener:Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;

.field private mPrimaryTextViewId:I

.field private mSecondaryTextViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;-><init>(Lcom/sec/android/app/contacts/ListHoverManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mListHoverListener:Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;

    .line 46
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/ListHoverManager;->isUsingTwoPanel:Z

    .line 47
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/ListHoverManager;->isFonblet:Z

    .line 50
    return-void
.end method

.method private blockChildTextViewHovering(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->getPrimaryTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 112
    .local v0, "primaryTextView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->getSecondaryTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 113
    .local v1, "secondaryTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 116
    :cond_0
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 119
    :cond_1
    return-void
.end method

.method private setDefaultHoverPopupStyle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 88
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 95
    .local v0, "hoverPopupWindow":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 96
    const v1, 0x7f04007e

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    .line 98
    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mListHoverListener:Lcom/sec/android/app/contacts/ListHoverManager$ListHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getPrimaryTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2
    .param p1, "listItemView"    # Landroid/view/View;

    .prologue
    .line 122
    instance-of v1, p1, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    .line 123
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .end local p1    # "listItemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getDisplayNameForHovering()Landroid/widget/TextView;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 125
    .restart local p1    # "listItemView":Landroid/view/View;
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mPrimaryTextViewId:I

    if-lez v1, :cond_1

    .line 126
    iget v1, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mPrimaryTextViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 128
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 131
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSecondaryTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2
    .param p1, "listItemView"    # Landroid/view/View;

    .prologue
    .line 135
    instance-of v1, p1, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v1, :cond_0

    .line 136
    check-cast p1, Lcom/android/contacts/list/ContactListItemView;

    .end local p1    # "listItemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameViewForHovering()Landroid/widget/TextView;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 138
    .restart local p1    # "listItemView":Landroid/view/View;
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mSecondaryTextViewId:I

    if-lez v1, :cond_1

    .line 139
    iget v1, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mSecondaryTextViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 141
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 144
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHoverPopup(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53
    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->getPrimaryTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 59
    .local v1, "primaryTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 61
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 65
    .end local v0    # "hpw":Landroid/widget/HoverPopupWindow;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ListHoverManager;->getSecondaryTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 66
    .local v2, "secondaryTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 68
    .restart local v0    # "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, v3}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setTextViewId(II)V
    .locals 0
    .param p1, "primaryTextViewId"    # I
    .param p2, "secondaryTextViewId"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mPrimaryTextViewId:I

    .line 107
    iput p2, p0, Lcom/sec/android/app/contacts/ListHoverManager;->mSecondaryTextViewId:I

    .line 108
    return-void
.end method
