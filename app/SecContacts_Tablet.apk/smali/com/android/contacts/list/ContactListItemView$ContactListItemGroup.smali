.class public Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListItemGroup"
.end annotation


# static fields
.field public static final CONTACT_LIST_VIEW_ID:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactListItemView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2383
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    .line 2384
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2385
    return-void
.end method

.method private blockChildTextViewHovering()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3058
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setFingerHoveredInAppWidget(Z)V

    .line 3059
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3060
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 3062
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3063
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 3065
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3066
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 3068
    :cond_2
    return-void
.end method

.method private configureHoverPopup(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2967
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    .line 2969
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListItemView;->getDisplayNameForHovering()Landroid/widget/TextView;

    move-result-object v1

    .line 2970
    .local v1, "primaryTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameViewForHovering()Landroid/widget/TextView;

    move-result-object v2

    .line 2972
    .local v2, "secondaryTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2973
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 2974
    .local v0, "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 2975
    invoke-virtual {v0, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 2978
    .end local v0    # "hpw":Landroid/widget/HoverPopupWindow;
    :cond_0
    if-eqz v2, :cond_1

    .line 2979
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 2980
    .restart local v0    # "hpw":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_1

    .line 2981
    invoke-virtual {v0, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 2984
    .end local v0    # "hpw":Landroid/widget/HoverPopupWindow;
    :cond_1
    return-void
.end method

.method private isDisplayNameHoverable()Z
    .locals 1

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneticNameHoverable()Z
    .locals 1

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeHoverText(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "fingerTextView"    # Landroid/widget/TextView;
    .param p2, "primaryTextView"    # Landroid/widget/TextView;
    .param p3, "secondaryTextView"    # Landroid/widget/TextView;

    .prologue
    .line 3019
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3022
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3023
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3024
    .local v2, "temp":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 3025
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3029
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3030
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3031
    .restart local v2    # "temp":Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3032
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3035
    :cond_1
    if-eqz v2, :cond_2

    .line 3036
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3040
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3043
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3044
    .local v0, "span":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3046
    if-eqz p1, :cond_3

    .line 3047
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3054
    .end local v0    # "span":Landroid/text/Spannable;
    :cond_3
    :goto_0
    return-object v1

    .line 3050
    :cond_4
    if-eqz p1, :cond_3

    .line 3051
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setDefaultHoverPopupStyle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 2988
    if-nez p1, :cond_1

    .line 3002
    :cond_0
    :goto_0
    return-void

    .line 2993
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 2994
    invoke-virtual {p1, v2}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 2995
    .local v0, "hoverPopupWindow":Landroid/widget/HoverPopupWindow;
    if-eqz v0, :cond_0

    .line 2996
    const v1, 0x7f04007e

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    .line 2997
    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 2999
    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 3000
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    goto :goto_0
.end method

.method private setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "hoverTextView"    # Landroid/widget/TextView;

    .prologue
    .line 3005
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3007
    .local v0, "layoutParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3014
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3015
    return-void

    .line 3011
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected layoutLeftSideForMirroring(IIII)I
    .locals 13
    .param p1, "height"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "leftBound"    # I

    .prologue
    .line 2871
    move/from16 v5, p4

    .line 2872
    .local v5, "leftBoundForPresenceIcon":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2873
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 2874
    .local v8, "presenceIconWidth":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 2875
    .local v6, "presenceIconHeight":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v7, p2, v9

    .line 2876
    .local v7, "presenceIconTop":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    add-int v10, v5, v8

    add-int v11, v7, v6

    invoke-virtual {v9, v5, v7, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2881
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 2885
    .end local v6    # "presenceIconHeight":I
    .end local v7    # "presenceIconTop":I
    .end local v8    # "presenceIconWidth":I
    :cond_0
    move/from16 v4, p4

    .line 2886
    .local v4, "leftBoundForAccountIconLayout":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, v10, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2887
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 2888
    .local v1, "accountIconLayoutWidth":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$5000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v2, v9, v10

    .line 2890
    .local v2, "accountIconTop":I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    add-int v10, v4, v1

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v4, v2, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 2895
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v4, v9

    .line 2899
    .end local v1    # "accountIconLayoutWidth":I
    .end local v2    # "accountIconTop":I
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, v10, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2900
    :cond_2
    if-le v5, v4, :cond_4

    .line 2901
    move/from16 p4, v5

    .line 2908
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2909
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v3

    .line 2910
    .local v3, "buttonWidth":I
    sub-int p4, p4, v3

    .line 2911
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    add-int v10, p4, v3

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v11, p1, v11

    move/from16 v0, p4

    invoke-virtual {v9, v0, p2, v10, v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 2916
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x1

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$5102(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 2917
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # invokes: Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$5200(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2918
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$5300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    sub-int p4, p4, v9

    .line 2919
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$5400(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, p2

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2928
    .end local v3    # "buttonWidth":I
    :goto_1
    return p4

    .line 2903
    :cond_4
    move/from16 p4, v4

    goto :goto_0

    .line 2925
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$5102(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_1
.end method

.method protected layoutRightSide(IIII)I
    .locals 16
    .param p1, "height"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I

    .prologue
    .line 2768
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2769
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v2, v11, v12

    .line 2770
    .local v2, "ListbuttonWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    div-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    sub-int p4, p4, v11

    .line 2771
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    add-int v12, p4, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x4

    div-int/lit8 v13, v13, 0x3

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12, v13}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    add-int v12, p4, v2

    add-int v13, p4, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    sub-int v14, p1, v14

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2781
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x1

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$4102(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 2782
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # invokes: Lcom/android/contacts/list/ContactListItemView;->ensureListCallVerticalDivider()V
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2783
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int p4, p4, v11

    .line 2784
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2785
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    sub-int v14, p1, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/android/contacts/list/ContactListItemView;->access$4600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v14, v15

    move/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2797
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int p4, p4, v11

    .line 2803
    .end local v2    # "ListbuttonWidth":I
    :goto_1
    move/from16 v10, p4

    .line 2805
    .local v10, "rightBoundForPresenceIcon":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2806
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 2807
    .local v8, "presenceIconWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 2808
    .local v6, "presenceIconHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v7, p2, v11

    .line 2809
    .local v7, "presenceIconTop":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    sub-int v12, v10, v8

    add-int v13, v7, v6

    invoke-virtual {v11, v12, v7, v10, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2814
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v8

    sub-int/2addr v10, v11

    .line 2818
    .end local v6    # "presenceIconHeight":I
    .end local v7    # "presenceIconTop":I
    .end local v8    # "presenceIconWidth":I
    :cond_1
    move/from16 v9, p4

    .line 2820
    .local v9, "rightBoundForAccountIconLayout":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v12, v12, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2821
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, v11, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 2822
    .local v3, "accountIconLayoutWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$5000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v4, v11, v12

    .line 2824
    .local v4, "accountIconTop":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, v11, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    sub-int v12, v9, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v11, v12, v4, v9, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v3

    sub-int/2addr v9, v11

    .line 2833
    .end local v3    # "accountIconLayoutWidth":I
    .end local v4    # "accountIconTop":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v12, v12, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2834
    :cond_3
    if-ge v10, v9, :cond_7

    .line 2835
    move/from16 p4, v10

    .line 2842
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2843
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v5

    .line 2844
    .local v5, "buttonWidth":I
    sub-int p4, p4, v5

    .line 2845
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    add-int v12, p4, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12, v13}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x1

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$5102(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 2851
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # invokes: Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5200(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int p4, p4, v11

    .line 2853
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5400(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$5300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    sub-int v14, p1, v14

    move/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2862
    .end local v5    # "buttonWidth":I
    :goto_3
    return p4

    .line 2791
    .end local v9    # "rightBoundForAccountIconLayout":I
    .end local v10    # "rightBoundForPresenceIcon":I
    .restart local v2    # "ListbuttonWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    sub-int v14, p1, v14

    move/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 2799
    .end local v2    # "ListbuttonWidth":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$4102(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto/16 :goto_1

    .line 2837
    .restart local v9    # "rightBoundForAccountIconLayout":I
    .restart local v10    # "rightBoundForPresenceIcon":I
    :cond_7
    move/from16 p4, v9

    goto/16 :goto_2

    .line 2859
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$5102(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2530
    sub-int v8, p5, p3

    .line 2531
    .local v8, "height":I
    sub-int v17, p4, p2

    .line 2533
    .local v17, "width":I
    const/4 v15, 0x0

    .line 2534
    .local v15, "topBound":I
    move v4, v8

    .line 2535
    .local v4, "bottomBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getPaddingLeft()I

    move-result v9

    .line 2536
    .local v9, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getPaddingRight()I

    move-result v18

    sub-int v12, v17, v18

    .line 2543
    .local v12, "rightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v18

    sget-object v19, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v6

    .line 2546
    .local v6, "checkBoxWidth":I
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v5, v15, v18

    .line 2547
    .local v5, "checkBoxTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v9, v9, v18

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->layout(IIII)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v18, v18, v6

    add-int v9, v9, v18

    .line 2569
    .end local v5    # "checkBoxTop":I
    .end local v6    # "checkBoxWidth":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v11

    .line 2570
    .local v11, "photoView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v18

    sget-object v19, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 2572
    if-eqz v11, :cond_13

    .line 2574
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v10, v15, v18

    .line 2578
    .local v10, "photoTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/16 v18, 0x0

    :goto_2
    add-int v9, v9, v18

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2604
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    add-int v9, v9, v18

    .line 2656
    .end local v10    # "photoTop":I
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 2657
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v4, v9}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutLeftSideForMirroring(IIII)I

    move-result v9

    .line 2663
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v16, v18, v19

    .line 2665
    .local v16, "totalTextHeight":I
    add-int v18, v4, v15

    sub-int v18, v18, v16

    div-int/lit8 v14, v18, 0x2

    .line 2669
    .local v14, "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2678
    :cond_3
    move v13, v9

    .line 2680
    .local v13, "statusLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2687
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2688
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2692
    :cond_6
    move v7, v9

    .line 2693
    .local v7, "dataLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2701
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2710
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v18

    sget-object v19, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    sub-int v12, v12, v18

    .line 2729
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 2735
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2736
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2739
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2746
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2749
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->isDisplayNameHoverable()Z

    move-result v18

    if-nez v18, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->isPhoneticNameHoverable()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 2750
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->configureHoverPopup(Landroid/view/View;)V

    .line 2751
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mContactListItemGroup:Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 2760
    :cond_f
    :goto_6
    return-void

    .line 2556
    .end local v7    # "dataLeftBound":I
    .end local v11    # "photoView":Landroid/view/View;
    .end local v13    # "statusLeftBound":I
    .end local v14    # "textTopBound":I
    .end local v16    # "totalTextHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v6

    .line 2558
    .restart local v6    # "checkBoxWidth":I
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v5, v15, v18

    .line 2559
    .restart local v5    # "checkBoxTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    sub-int v12, v12, v18

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    sub-int v19, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->layout(IIII)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v18, v18, v6

    sub-int v12, v12, v18

    goto/16 :goto_0

    .line 2569
    .end local v5    # "checkBoxTop":I
    .end local v6    # "checkBoxWidth":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    goto/16 :goto_1

    .line 2578
    .restart local v10    # "photoTop":I
    .restart local v11    # "photoView":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    goto/16 :goto_2

    .line 2605
    .end local v10    # "photoTop":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    add-int v9, v9, v18

    goto/16 :goto_3

    .line 2609
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->isGalSearchShowMoreItem:Z
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v9, v9, v18

    goto/16 :goto_3

    .line 2614
    :cond_15
    if-eqz v11, :cond_2

    .line 2616
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v10, v15, v18

    .line 2618
    .restart local v10    # "photoTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    sub-int v12, v12, v18

    .line 2619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    sub-int v18, v12, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v10, v12, v1}, Landroid/view/View;->layout(IIII)V

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v10, v12, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2647
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    sub-int v12, v12, v18

    goto/16 :goto_3

    .line 2659
    .end local v10    # "photoTop":I
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v4, v12}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutRightSide(IIII)I

    move-result v12

    goto/16 :goto_4

    .line 2720
    .restart local v7    # "dataLeftBound":I
    .restart local v13    # "statusLeftBound":I
    .restart local v14    # "textTopBound":I
    .restart local v16    # "totalTextHeight":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    add-int v7, v9, v18

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v1, v7, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v7, v7, v18

    goto/16 :goto_5

    .line 2754
    :cond_19
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setHoverPopupType(I)V

    .line 2755
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v18

    if-eqz v18, :cond_f

    .line 2756
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    goto/16 :goto_6
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2391
    const/4 v8, 0x0

    invoke-static {v8, p1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->resolveSize(II)I

    move-result v7

    .line 2392
    .local v7, "width":I
    const/4 v0, 0x0

    .line 2393
    .local v0, "height":I
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v3

    .line 2394
    .local v3, "preferredHeight":I
    const/4 v5, 0x0

    .line 2396
    .local v5, "remainWidthSum":I
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2397
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2398
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2399
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2400
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2401
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$602(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2402
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v9, 0x0

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2404
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2407
    .local v1, "needToExtendNameViewHeight":Z
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2409
    const/4 v4, 0x0

    .line 2410
    .local v4, "remainWidth":I
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2413
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->measure(II)V

    .line 2414
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$1002(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2416
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v6, v8, v9

    .line 2417
    .local v6, "totalCheckBoxWidth":I
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->specWidth:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v6

    sub-int v4, v8, v9

    .line 2418
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2419
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    sub-int v8, v4, v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    sub-int v4, v8, v9

    .line 2430
    .end local v6    # "totalCheckBoxWidth":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    .line 2431
    .local v2, "photoView":Landroid/view/View;
    :goto_1
    move v5, v4

    .line 2432
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v8, v2}, Lcom/android/contacts/list/ContactListItemView;->isGonevisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2433
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 2435
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x40000000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2438
    if-eqz v1, :cond_12

    .line 2439
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3ff2666666666666L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2445
    .end local v2    # "photoView":Landroid/view/View;
    .end local v4    # "remainWidth":I
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2446
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x40000000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2448
    if-eqz v1, :cond_13

    .line 2449
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3ff199999999999aL

    mul-double/2addr v9, v11

    double-to-int v9, v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2455
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2456
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2457
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2460
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2461
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2462
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2466
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2467
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/high16 v9, 0x40000000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2469
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2473
    :cond_6
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2475
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2476
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2477
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$602(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2481
    :cond_7
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2482
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/ImageView;->measure(II)V

    .line 2483
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2486
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2487
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2488
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2493
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 2496
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2497
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 2500
    :cond_a
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2501
    :cond_b
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 2502
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButtonMarginView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/ImageView;->measure(II)V

    .line 2507
    :cond_c
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2508
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->measure(II)V

    .line 2509
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$1002(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2513
    :cond_d
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2514
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v8, v8, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 2515
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$3202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2519
    :cond_e
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # invokes: Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$3300(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2520
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    iget v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v8, v9

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2523
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2525
    invoke-virtual {p0, v7, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setMeasuredDimension(II)V

    .line 2526
    return-void

    .line 2421
    .restart local v4    # "remainWidth":I
    :cond_f
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2422
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->specWidth:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    sub-int v4, v8, v9

    goto/16 :goto_0

    .line 2425
    :cond_10
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->specWidth:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    sub-int v4, v8, v9

    goto/16 :goto_0

    .line 2430
    :cond_11
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v2

    goto/16 :goto_1

    .line 2441
    .restart local v2    # "photoView":Landroid/view/View;
    :cond_12
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    goto/16 :goto_2

    .line 2451
    .end local v2    # "photoView":Landroid/view/View;
    .end local v4    # "remainWidth":I
    :cond_13
    iget-object v8, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    # getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    # setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    goto/16 :goto_3
.end method

.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "hpw"    # Landroid/widget/HoverPopupWindow;

    .prologue
    const/4 v4, 0x0

    .line 2933
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2934
    .local v0, "hoverLinearLayout":Landroid/widget/LinearLayout;
    if-nez v0, :cond_1

    .line 2951
    :cond_0
    :goto_0
    return v4

    .line 2938
    :cond_1
    const v5, 0x7f0901e7

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2940
    .local v1, "hoverPopupTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2944
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactListItemView;->getDisplayNameForHovering()Landroid/widget/TextView;

    move-result-object v2

    .line 2945
    .local v2, "primaryTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameViewForHovering()Landroid/widget/TextView;

    move-result-object v3

    .line 2947
    .local v3, "secondaryTextView":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setHoverTextWidth(Landroid/widget/TextView;)V

    .line 2949
    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->makeHoverText(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 2951
    const/4 v4, 0x1

    goto :goto_0
.end method
