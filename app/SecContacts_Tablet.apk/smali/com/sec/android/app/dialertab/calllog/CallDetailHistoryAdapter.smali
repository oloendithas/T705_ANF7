.class public Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# static fields
.field private static final DBG:Z

.field public static final FONT_SIZE_HUGE:I = 0x4

.field public static final FONT_SIZE_LARGE:I = 0x3

.field public static final FONT_SIZE_NORMAL:I = 0x2

.field public static final FONT_SIZE_SMALL:I = 0x1

.field public static final FONT_SIZE_TINY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallDetailHistoryAdapter"

.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_HISTORY_ITEM:I = 0x1

.field private static isVoLTEEnabled:Z


# instance fields
.field public final WVGA_WIDTH:D

.field private final bDeleteView:Z

.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mRcsDetailViewSharedFile:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

.field private final mShowCallAndSms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    .line 96
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->isVoLTEEnabled:Z

    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "callTypeHelper"    # Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .param p4, "phoneCallDetails"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p5, "showCallAndSms"    # Z
    .param p6, "isDelete"    # Z
    .param p7, "controls"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    const-wide/high16 v0, 0x407e000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->WVGA_WIDTH:D

    .line 99
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 114
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 116
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 117
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 118
    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    .line 119
    iput-boolean p6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    .line 120
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    .line 121
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mRcsDetailViewSharedFile:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustListItemLayoutBy7FontSize(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 895
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 896
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 897
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 898
    .local v3, "fontSize":I
    const v8, 0x7f09009c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 899
    .local v0, "callTime":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 901
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "CallDetailHistoryAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustListItemLayoutBy7FontSize fontSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mlp.topMargin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 904
    packed-switch v3, :pswitch_data_0

    .line 955
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 913
    :pswitch_1
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 914
    const/16 v8, -0x12

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 915
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 916
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 921
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v8

    .line 923
    .local v4, "lcdWidth":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 925
    .local v7, "smallestWidthdp":I
    const v8, 0x7f0900a3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 926
    .local v2, "duration":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 928
    .local v6, "mlpDuration":Landroid/view/ViewGroup$MarginLayoutParams;
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 936
    :pswitch_2
    const/high16 v8, 0x45200000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x44c80000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_0

    .line 937
    :cond_2
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 938
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 939
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 940
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 945
    :pswitch_3
    const/high16 v8, 0x45200000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x44c80000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_0

    .line 946
    :cond_3
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 947
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 948
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 949
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 928
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private adjustListItemLayoutByFontSize(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 800
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 801
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 802
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 803
    .local v3, "fontSize":I
    const v8, 0x7f09009c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 804
    .local v0, "callTime":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 806
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "CallDetailHistoryAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mlp.topMargin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 809
    packed-switch v3, :pswitch_data_0

    .line 838
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid font size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 815
    :pswitch_0
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_1

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v9, 0x43910000

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 816
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110053

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 887
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 818
    :cond_1
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_0

    .line 819
    const/4 v8, 0x6

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 820
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110054

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 821
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 825
    :pswitch_2
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_2

    iget v8, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v9, 0x43910000

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 826
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110057

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 828
    :cond_2
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_3

    .line 829
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 831
    :cond_3
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xf0

    if-eq v8, v9, :cond_4

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 832
    :cond_4
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 833
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 834
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 841
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v8

    .line 843
    .local v4, "lcdWidth":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 845
    .local v7, "smallestWidthdp":I
    const-string v8, "CallDetailHistoryAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lcdWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v8, "CallDetailHistoryAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smallestWidthdp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const v8, 0x7f0900a3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 849
    .local v2, "duration":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 851
    .local v6, "mlpDuration":Landroid/view/ViewGroup$MarginLayoutParams;
    packed-switch v3, :pswitch_data_1

    .line 889
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid font size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 857
    :pswitch_3
    const-string v8, "CallDetailHistoryAdapter"

    const-string v9, "Large"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/high16 v8, 0x44a00000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x44480000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_8

    .line 859
    :cond_6
    const/16 v8, 0x258

    if-eq v7, v8, :cond_7

    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 860
    :cond_7
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 861
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 862
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 864
    :cond_8
    const/high16 v8, 0x45200000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_9

    const/high16 v8, 0x44c80000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_0

    .line 865
    :cond_9
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 866
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 867
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 868
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 873
    :pswitch_4
    const-string v8, "CallDetailHistoryAdapter"

    const-string v9, "Huge"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/high16 v8, 0x44a00000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x44480000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_c

    .line 875
    :cond_a
    const/16 v8, 0x258

    if-eq v7, v8, :cond_b

    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 876
    :cond_b
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 877
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005b

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 878
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 880
    :cond_c
    const/high16 v8, 0x45200000

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_d

    const/high16 v8, 0x44c80000

    cmpl-float v8, v4, v8

    if-nez v8, :cond_0

    .line 881
    :cond_d
    const/16 v8, 0x320

    if-ne v7, v8, :cond_0

    .line 882
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 883
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005b

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 884
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 851
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v8, 0x3c

    .line 696
    const-wide/16 v0, 0x0

    .line 697
    .local v0, "hours":J
    const-wide/16 v2, 0x0

    .line 698
    .local v2, "minutes":J
    const-wide/16 v4, 0x0

    .line 699
    .local v4, "seconds":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .local v6, "timeString":Ljava/lang/StringBuilder;
    cmp-long v7, p1, v8

    if-ltz v7, :cond_1

    .line 702
    rem-long v4, p1, v8

    .line 703
    div-long v2, p1, v8

    .line 705
    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    .line 706
    div-long v0, v2, v8

    .line 707
    rem-long/2addr v2, v8

    .line 713
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->toTwoDigitChar(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 711
    :cond_1
    move-wide v4, p1

    goto :goto_0
.end method

.method private setSimCardIcon(I)I
    .locals 2
    .param p1, "nIndex"    # I

    .prologue
    .line 729
    const-string v1, "number_of_select_icon_is_9"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    packed-switch p1, :pswitch_data_0

    .line 759
    const v0, 0x7f020825

    .line 796
    .local v0, "Image":I
    :goto_0
    return v0

    .line 732
    .end local v0    # "Image":I
    :pswitch_0
    const v0, 0x7f020825

    .line 733
    .restart local v0    # "Image":I
    goto :goto_0

    .line 735
    .end local v0    # "Image":I
    :pswitch_1
    const v0, 0x7f020828

    .line 736
    .restart local v0    # "Image":I
    goto :goto_0

    .line 738
    .end local v0    # "Image":I
    :pswitch_2
    const v0, 0x7f020819

    .line 739
    .restart local v0    # "Image":I
    goto :goto_0

    .line 741
    .end local v0    # "Image":I
    :pswitch_3
    const v0, 0x7f020845

    .line 742
    .restart local v0    # "Image":I
    goto :goto_0

    .line 744
    .end local v0    # "Image":I
    :pswitch_4
    const v0, 0x7f02083b

    .line 745
    .restart local v0    # "Image":I
    goto :goto_0

    .line 747
    .end local v0    # "Image":I
    :pswitch_5
    const v0, 0x7f020837

    .line 748
    .restart local v0    # "Image":I
    goto :goto_0

    .line 750
    .end local v0    # "Image":I
    :pswitch_6
    const v0, 0x7f020832

    .line 751
    .restart local v0    # "Image":I
    goto :goto_0

    .line 753
    .end local v0    # "Image":I
    :pswitch_7
    const v0, 0x7f020840

    .line 754
    .restart local v0    # "Image":I
    goto :goto_0

    .line 756
    .end local v0    # "Image":I
    :pswitch_8
    const v0, 0x7f02082c

    .line 757
    .restart local v0    # "Image":I
    goto :goto_0

    .line 763
    .end local v0    # "Image":I
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 792
    const v0, 0x7f020824

    .restart local v0    # "Image":I
    goto :goto_0

    .line 765
    .end local v0    # "Image":I
    :pswitch_9
    const v0, 0x7f020824

    .line 766
    .restart local v0    # "Image":I
    goto :goto_0

    .line 768
    .end local v0    # "Image":I
    :pswitch_a
    const v0, 0x7f020827

    .line 769
    .restart local v0    # "Image":I
    goto :goto_0

    .line 771
    .end local v0    # "Image":I
    :pswitch_b
    const v0, 0x7f020831

    .line 772
    .restart local v0    # "Image":I
    goto :goto_0

    .line 774
    .end local v0    # "Image":I
    :pswitch_c
    const v0, 0x7f02083f

    .line 775
    .restart local v0    # "Image":I
    goto :goto_0

    .line 777
    .end local v0    # "Image":I
    :pswitch_d
    const v0, 0x7f02082b

    .line 778
    .restart local v0    # "Image":I
    goto :goto_0

    .line 780
    .end local v0    # "Image":I
    :pswitch_e
    const v0, 0x7f020848

    .line 781
    .restart local v0    # "Image":I
    goto :goto_0

    .line 783
    .end local v0    # "Image":I
    :pswitch_f
    const v0, 0x7f02081c

    .line 784
    .restart local v0    # "Image":I
    goto :goto_0

    .line 786
    .end local v0    # "Image":I
    :pswitch_10
    const v0, 0x7f02081d

    .line 787
    .restart local v0    # "Image":I
    goto :goto_0

    .line 789
    .end local v0    # "Image":I
    :pswitch_11
    const v0, 0x7f020822

    .line 790
    .restart local v0    # "Image":I
    goto :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 763
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static toTwoDigitChar(J)Ljava/lang/String;
    .locals 4
    .param p0, "digit"    # J

    .prologue
    .line 723
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-wide/16 v0, -0x1

    .line 144
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 54
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 162
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView, position : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "view : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    if-nez p1, :cond_8

    .line 165
    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040017

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    .line 171
    .local v38, "header":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 692
    .end local v38    # "header":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v38

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000f

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000f

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    goto :goto_0

    :cond_4
    move-object/from16 v38, p2

    goto :goto_0

    .line 175
    .restart local v38    # "header":Landroid/view/View;
    :cond_5
    const v2, 0x7f0900a7

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 176
    .local v20, "callAndSmsContainer":Landroid/view/View;
    if-eqz v20, :cond_7

    .line 177
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 182
    .local v28, "container":Landroid/view/ViewGroup$LayoutParams;
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .end local v28    # "container":Landroid/view/ViewGroup$LayoutParams;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1

    .line 185
    .restart local v28    # "container":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/16 v2, 0x8

    goto :goto_2

    .line 188
    .end local v28    # "container":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const-string v2, "CallDetailHistoryAdapter"

    const-string v3, "callAndSmsContainer is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 200
    .end local v20    # "callAndSmsContainer":Landroid/view/View;
    .end local v38    # "header":Landroid/view/View;
    :cond_8
    const-string v2, "feature_tablet_selection_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 201
    if-nez p2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040018

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v49

    .line 212
    .local v49, "result":Landroid/view/View;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v3, p1, -0x1

    aget-object v34, v2, v3

    .line 213
    .local v34, "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const v2, 0x7f09009b

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;

    .line 216
    .local v24, "callTypeIconView":Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    const v2, 0x7f09009c

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 217
    .local v21, "callTime":Landroid/widget/TextView;
    const v2, 0x7f0900a1

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 218
    .local v41, "logType":Landroid/widget/ImageView;
    const v2, 0x7f0900a3

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 219
    .local v36, "durationView":Landroid/widget/TextView;
    const v2, 0x7f090099

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 220
    .local v32, "detail_date":Landroid/widget/TextView;
    const v2, 0x7f090098

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 221
    .local v33, "detail_date_container":Landroid/view/View;
    const/16 v51, 0x0

    .line 222
    .local v51, "simcardImage":Landroid/widget/ImageView;
    const/16 v35, 0x0

    .line 225
    .local v35, "durationDescription":Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 226
    .local v31, "detailRemindMeLayout":Landroid/widget/LinearLayout;
    const/16 v29, 0x0

    .line 227
    .local v29, "detailRemindMeButtonOff":Landroid/widget/Button;
    const/16 v30, 0x0

    .line 228
    .local v30, "detailRemindMeButtonOn":Landroid/widget/Button;
    const v2, 0x7f0900aa

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    .line 229
    .local v53, "view":Landroid/view/View;
    if-eqz v53, :cond_9

    .line 230
    const/4 v2, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 235
    :cond_9
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_a

    .line 236
    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    check-cast v48, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 237
    .local v48, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_19

    .line 238
    const/16 v2, 0x1e

    move-object/from16 v0, v48

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 242
    :goto_5
    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    sget-wide v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    const-wide/high16 v10, 0x407e000000000000L

    cmpl-double v2, v2, v10

    if-nez v2, :cond_a

    .line 245
    const v2, 0x7f09009a

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    .line 246
    .local v40, "itemlayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    const/4 v10, 0x2

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 247
    .local v37, "fontSize":I
    const/4 v2, 0x4

    move/from16 v0, v37

    if-eq v0, v2, :cond_1a

    .line 248
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 255
    .end local v37    # "fontSize":I
    .end local v40    # "itemlayout":Landroid/widget/RelativeLayout;
    .end local v48    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    :goto_6
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 257
    :cond_b
    const v2, 0x7f0900a2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .end local v51    # "simcardImage":Landroid/widget/ImageView;
    check-cast v51, Landroid/widget/ImageView;

    .line 260
    .restart local v51    # "simcardImage":Landroid/widget/ImageView;
    :cond_c
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 261
    const v2, 0x7f09009d

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "detailRemindMeLayout":Landroid/widget/LinearLayout;
    check-cast v31, Landroid/widget/LinearLayout;

    .line 262
    .restart local v31    # "detailRemindMeLayout":Landroid/widget/LinearLayout;
    const v2, 0x7f09009f

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29    # "detailRemindMeButtonOff":Landroid/widget/Button;
    check-cast v29, Landroid/widget/Button;

    .line 263
    .restart local v29    # "detailRemindMeButtonOff":Landroid/widget/Button;
    const v2, 0x7f0900a0

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "detailRemindMeButtonOn":Landroid/widget/Button;
    check-cast v30, Landroid/widget/Button;

    .line 265
    .restart local v30    # "detailRemindMeButtonOn":Landroid/widget/Button;
    :cond_d
    const v2, 0x7f0900ab

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 267
    .local v27, "cdnipNumberView":Landroid/widget/TextView;
    const/16 v2, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    if-eqz v33, :cond_e

    .line 269
    const/16 v2, 0x8

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_e
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 273
    const/16 v43, 0x0

    .line 274
    .local v43, "mDateText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-wide v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v2, v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v42

    .line 276
    .local v42, "mDateFormat":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    if-eqz v33, :cond_f

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_f
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 287
    :goto_7
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v43

    .line 288
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .end local v42    # "mDateFormat":Ljava/lang/CharSequence;
    .end local v43    # "mDateText":Ljava/lang/String;
    :cond_10
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    if-eqz v2, :cond_11

    .line 292
    const-string v2, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "details : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_11
    if-nez v34, :cond_1d

    .line 295
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 201
    .end local v21    # "callTime":Landroid/widget/TextView;
    .end local v24    # "callTypeIconView":Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    .end local v27    # "cdnipNumberView":Landroid/widget/TextView;
    .end local v29    # "detailRemindMeButtonOff":Landroid/widget/Button;
    .end local v30    # "detailRemindMeButtonOn":Landroid/widget/Button;
    .end local v31    # "detailRemindMeLayout":Landroid/widget/LinearLayout;
    .end local v32    # "detail_date":Landroid/widget/TextView;
    .end local v33    # "detail_date_container":Landroid/view/View;
    .end local v34    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v35    # "durationDescription":Landroid/widget/TextView;
    .end local v36    # "durationView":Landroid/widget/TextView;
    .end local v41    # "logType":Landroid/widget/ImageView;
    .end local v49    # "result":Landroid/view/View;
    .end local v51    # "simcardImage":Landroid/widget/ImageView;
    .end local v53    # "view":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040014

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v49

    goto/16 :goto_4

    :cond_13
    move-object/from16 v49, p2

    goto/16 :goto_4

    .line 205
    :cond_14
    if-nez p2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_16

    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040019

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v49

    .restart local v49    # "result":Landroid/view/View;
    :goto_8
    goto/16 :goto_4

    .end local v49    # "result":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040018

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v49

    goto :goto_8

    :cond_16
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040011

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v49

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040010

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v49

    goto :goto_8

    :cond_18
    move-object/from16 v49, p2

    goto :goto_8

    .line 240
    .restart local v21    # "callTime":Landroid/widget/TextView;
    .restart local v24    # "callTypeIconView":Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    .restart local v29    # "detailRemindMeButtonOff":Landroid/widget/Button;
    .restart local v30    # "detailRemindMeButtonOn":Landroid/widget/Button;
    .restart local v31    # "detailRemindMeLayout":Landroid/widget/LinearLayout;
    .restart local v32    # "detail_date":Landroid/widget/TextView;
    .restart local v33    # "detail_date_container":Landroid/view/View;
    .restart local v34    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v35    # "durationDescription":Landroid/widget/TextView;
    .restart local v36    # "durationView":Landroid/widget/TextView;
    .restart local v41    # "logType":Landroid/widget/ImageView;
    .restart local v48    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v49    # "result":Landroid/view/View;
    .restart local v51    # "simcardImage":Landroid/widget/ImageView;
    .restart local v53    # "view":Landroid/view/View;
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, v48

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_5

    .line 250
    .restart local v37    # "fontSize":I
    .restart local v40    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_6

    .line 283
    .end local v37    # "fontSize":I
    .end local v40    # "itemlayout":Landroid/widget/RelativeLayout;
    .end local v48    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v27    # "cdnipNumberView":Landroid/widget/TextView;
    .restart local v42    # "mDateFormat":Ljava/lang/CharSequence;
    .restart local v43    # "mDateText":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v2, v10

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_7

    .line 286
    :cond_1c
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_7

    .line 297
    .end local v42    # "mDateFormat":Ljava/lang/CharSequence;
    .end local v43    # "mDateText":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v3, 0x0

    aget v23, v2, v3

    .line 298
    .local v23, "callType":I
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->clear()V

    .line 299
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->add(I)V

    .line 301
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v2, :sswitch_data_0

    .line 410
    :cond_1e
    :goto_9
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 411
    move-object/from16 v0, v34

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    move/from16 v52, v0

    .line 412
    .local v52, "simcardIndx":I
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 413
    const/4 v2, 0x1

    move/from16 v0, v52

    if-ne v0, v2, :cond_3b

    .line 414
    if-eqz v51, :cond_1f

    .line 415
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexCDMA:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    const/4 v2, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    .end local v52    # "simcardIndx":I
    :cond_1f
    :goto_a
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 460
    move-object/from16 v0, v34

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    move/from16 v50, v0

    .line 462
    .local v50, "simcardId":I
    if-eqz v51, :cond_20

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v50

    invoke-static {v2, v0}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    const/4 v2, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    .end local v50    # "simcardId":I
    :cond_20
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 468
    move-object/from16 v0, v34

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    move/from16 v47, v0

    .line 469
    .local v47, "mRemindMeLaterSet":I
    move-object/from16 v0, v34

    iget v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 470
    .local v6, "mId":I
    move-object/from16 v0, v34

    iget-wide v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 471
    .local v8, "mDate":J
    move-object/from16 v44, v31

    .line 472
    .local v44, "mDetailRemindMeLayout":Landroid/widget/LinearLayout;
    move-object/from16 v5, v29

    .line 473
    .local v5, "mDetailRemindMeButtonOff":Landroid/widget/Button;
    move-object/from16 v4, v30

    .line 474
    .local v4, "mDetailRemindMeButtonOn":Landroid/widget/Button;
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, "mNumber":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_42

    .line 477
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    const/4 v2, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_41

    .line 482
    const/4 v2, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 483
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;Landroid/widget/Button;Landroid/widget/Button;ILjava/lang/String;J)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    .end local v4    # "mDetailRemindMeButtonOn":Landroid/widget/Button;
    .end local v5    # "mDetailRemindMeButtonOff":Landroid/widget/Button;
    .end local v6    # "mId":I
    .end local v7    # "mNumber":Ljava/lang/String;
    .end local v8    # "mDate":J
    .end local v44    # "mDetailRemindMeLayout":Landroid/widget/LinearLayout;
    .end local v47    # "mRemindMeLaterSet":I
    :cond_21
    :goto_b
    const-string v2, "ctc_roaming_timezone"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_45

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-wide v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/16 v3, 0x101

    const-string v12, "Asia/Shanghai"

    invoke-static {v2, v10, v11, v3, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :goto_c
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 584
    const/16 v19, 0x15

    .line 585
    .local v19, "MESSAGE_CALL_TYPE":I
    const/16 v18, 0x16

    .line 587
    .local v18, "CMF_CALL_TYPE":I
    const-string v22, ""

    .line 589
    .local v22, "callTimeText":Ljava/lang/String;
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_46

    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_46

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0e0379

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 599
    :cond_22
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    .end local v18    # "CMF_CALL_TYPE":I
    .end local v19    # "MESSAGE_CALL_TYPE":I
    .end local v22    # "callTimeText":Ljava/lang/String;
    :cond_23
    const-string v2, "feature_use_7_font_size"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->adjustListItemLayoutBy7FontSize(Landroid/view/View;)V

    .line 608
    :goto_e
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_24

    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_49

    .line 609
    :cond_24
    const/16 v2, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    :cond_25
    :goto_f
    const-string v2, "disable_call_duration_information"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 669
    const/16 v2, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_26
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 673
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_27

    .line 674
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x44c

    if-ne v2, v3, :cond_56

    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    if-eqz v2, :cond_56

    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mRcsDetailViewSharedFile:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->SetDataAndAction(Landroid/view/View;Ljava/lang/String;)V

    .line 683
    :cond_27
    :goto_10
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    if-eqz v2, :cond_28

    .line 684
    const-string v2, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCount : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", position : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", time :"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 688
    const v2, 0x7f09009c

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 691
    :cond_29
    const v2, 0x7f0900a4

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v38, v49

    .line 692
    goto/16 :goto_1

    .line 303
    :sswitch_0
    const v2, 0x7f020712

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 306
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_9

    .line 312
    :sswitch_1
    const v2, 0x7f02070a

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 316
    :sswitch_2
    const v2, 0x7f020700

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 322
    :sswitch_3
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 323
    const v2, 0x7f020711

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 324
    :cond_2a
    const-string v2, "feature_kt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 325
    const v2, 0x7f02070f

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 326
    :cond_2b
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 327
    const v2, 0x7f020710

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 329
    :cond_2c
    const v2, 0x7f02070e

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 333
    :sswitch_4
    const v2, 0x7f020701

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 336
    :sswitch_5
    const v2, 0x7f020717

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 339
    :sswitch_6
    const v2, 0x7f0206f5

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 342
    :sswitch_7
    const v2, 0x7f0206f4

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 345
    :sswitch_8
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2d

    .line 347
    const v2, 0x7f020765

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 349
    :cond_2d
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "feature_vzw_sed"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 350
    const v2, 0x7f020761

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 352
    :cond_2e
    const-string v2, "feature_usa_message_icon"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 353
    const v2, 0x7f020760

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 356
    :cond_2f
    const v2, 0x7f02075f

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 361
    :sswitch_9
    const-string v2, "feature_cdma_layout"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "feature_gsm_layout"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 362
    :cond_30
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "feature_vzw_sed"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "feature_not_change_message_icon"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 363
    const v2, 0x7f020767

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 365
    :cond_31
    const-string v2, "feature_usa_message_icon"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 366
    const v2, 0x7f020766

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 369
    :cond_32
    const v2, 0x7f020764

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 371
    :cond_33
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_34

    .line 373
    const v2, 0x7f020765

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 375
    :cond_34
    const v2, 0x7f020764

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 379
    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 380
    const v2, 0x7f020706

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 384
    :sswitch_b
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 385
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 386
    const v2, 0x7f020716

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 387
    :cond_35
    const-string v2, "feature_kt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 388
    const-string v2, "feature_wb_amr"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 389
    const v2, 0x7f020712

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 391
    :cond_36
    const v2, 0x7f020713

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 393
    :cond_37
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 394
    const v2, 0x7f020714

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 396
    :cond_38
    const-string v2, "feature_usa"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 397
    const v2, 0x7f020712

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 399
    :cond_39
    const v2, 0x7f020715

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 403
    :cond_3a
    const v2, 0x7f020715

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 419
    .restart local v52    # "simcardIndx":I
    :cond_3b
    const/4 v2, 0x2

    move/from16 v0, v52

    if-ne v0, v2, :cond_3e

    .line 420
    if-eqz v51, :cond_1f

    .line 421
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 422
    const-string v2, "ril.ICC_TYPE2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3c

    .line 423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    :goto_11
    const/4 v2, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 425
    :cond_3c
    const-string v2, "gsm.sim.icon2"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 427
    :cond_3d
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->iconIndexGSM:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 433
    :cond_3e
    if-eqz v51, :cond_1f

    .line 434
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3f

    const-string v2, "ril.ICC_TYPE2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3f

    .line 436
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    :goto_12
    const/4 v2, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 438
    :cond_3f
    const-string v2, "gsm.sim.icon.dual"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12

    .line 452
    :cond_40
    if-eqz v51, :cond_1f

    .line 453
    const v2, 0x7f0202c6

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    const/16 v2, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 518
    .end local v52    # "simcardIndx":I
    .restart local v4    # "mDetailRemindMeButtonOn":Landroid/widget/Button;
    .restart local v5    # "mDetailRemindMeButtonOff":Landroid/widget/Button;
    .restart local v6    # "mId":I
    .restart local v7    # "mNumber":Ljava/lang/String;
    .restart local v8    # "mDate":J
    .restart local v44    # "mDetailRemindMeLayout":Landroid/widget/LinearLayout;
    .restart local v47    # "mRemindMeLaterSet":I
    :cond_41
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 519
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_b

    .line 521
    :cond_42
    const/4 v2, 0x2

    move/from16 v0, v47

    if-ne v0, v2, :cond_44

    .line 522
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const/4 v2, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_43

    .line 527
    const/4 v2, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 528
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$3;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v4

    move v14, v6

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;Landroid/widget/Button;Landroid/widget/Button;ILjava/lang/String;J)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    .line 561
    :cond_43
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setClickable(Z)V

    .line 562
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_b

    .line 566
    :cond_44
    const/4 v2, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 567
    const/16 v2, 0x8

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 577
    .end local v4    # "mDetailRemindMeButtonOn":Landroid/widget/Button;
    .end local v5    # "mDetailRemindMeButtonOff":Landroid/widget/Button;
    .end local v6    # "mId":I
    .end local v7    # "mNumber":Ljava/lang/String;
    .end local v8    # "mDate":J
    .end local v44    # "mDetailRemindMeLayout":Landroid/widget/LinearLayout;
    .end local v47    # "mRemindMeLaterSet":I
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-wide v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/16 v3, 0x101

    invoke-static {v2, v10, v11, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 592
    .restart local v18    # "CMF_CALL_TYPE":I
    .restart local v19    # "MESSAGE_CALL_TYPE":I
    .restart local v22    # "callTimeText":Ljava/lang/String;
    :cond_46
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_47

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0e0378

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_d

    .line 594
    :cond_47
    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_22

    move-object/from16 v0, v34

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_22

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0e03a3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_d

    .line 605
    .end local v18    # "CMF_CALL_TYPE":I
    .end local v19    # "MESSAGE_CALL_TYPE":I
    .end local v22    # "callTimeText":Ljava/lang/String;
    :cond_48
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->adjustListItemLayoutByFontSize(Landroid/view/View;)V

    goto/16 :goto_e

    .line 611
    :cond_49
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 612
    const/16 v46, 0x0

    .line 613
    .local v46, "mDurationDescription":Ljava/lang/String;
    const/16 v45, 0x0

    .line 615
    .local v45, "mDuration":Ljava/lang/String;
    const/16 v39, 0x0

    .line 616
    .local v39, "isCtcDuosForShow":Z
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 617
    const/4 v2, 0x6

    move/from16 v0, v23

    if-ne v0, v2, :cond_4b

    .line 618
    const/16 v39, 0x1

    .line 625
    :goto_13
    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_4a

    const/4 v2, 0x3

    move/from16 v0, v23

    if-eq v0, v2, :cond_4a

    const/4 v2, 0x5

    move/from16 v0, v23

    if-eq v0, v2, :cond_4a

    if-eqz v39, :cond_4d

    .line 626
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0393

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 636
    :goto_14
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v45

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 620
    :cond_4b
    const/16 v39, 0x0

    goto :goto_13

    .line 623
    :cond_4c
    const/16 v39, 0x0

    goto :goto_13

    .line 628
    :cond_4d
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    move-wide/from16 v25, v0

    .line 629
    .local v25, "call_out_duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v25, v2

    if-eqz v2, :cond_4e

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0393

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    goto :goto_14

    .line 633
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0392

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    goto :goto_14

    .line 639
    .end local v25    # "call_out_duration":J
    .end local v39    # "isCtcDuosForShow":Z
    .end local v45    # "mDuration":Ljava/lang/String;
    .end local v46    # "mDurationDescription":Ljava/lang/String;
    :cond_4f
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 640
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_25

    .line 642
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    if-eqz v2, :cond_50

    .line 643
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    const-string v3, "-"

    const-string v10, ""

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 646
    :cond_50
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 650
    :cond_51
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_55

    .line 651
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 652
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_52

    .line 653
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 655
    :cond_52
    const v2, 0x7f0e0328

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 657
    :cond_53
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_54

    .line 658
    const v2, 0x7f0e0329

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 660
    :cond_54
    const v2, 0x7f0e0328

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 663
    :cond_55
    move-object/from16 v0, v34

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 677
    :cond_56
    const/4 v2, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 678
    const/4 v2, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_10

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_6
        0xc8 -> :sswitch_8
        0x12c -> :sswitch_9
        0x1f4 -> :sswitch_3
        0x1fe -> :sswitch_7
        0x320 -> :sswitch_4
        0x384 -> :sswitch_5
        0x3e8 -> :sswitch_b
        0x44c -> :sswitch_a
    .end sparse-switch

    .line 306
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x2

    return v0
.end method
