.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "LogsDeleteAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field public static final FONT_SIZE_HUGE:I = 0x4

.field public static final FONT_SIZE_LARGE:I = 0x3

.field public static final FONT_SIZE_NORMAL:I = 0x2

.field public static final FONT_SIZE_SMALL:I = 0x1

.field public static final FONT_SIZE_TINY:I = 0x0

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MILLIS:I = 0x3e8

.field private static final START_THREAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LogsDeleteAdapter"

.field static final buildcarrier:Ljava/lang/String;


# instance fields
.field public final FHD_WIDTH:D

.field private final NOR_INT:I

.field private final SEP_INT:I

.field public final WVGA_WIDTH:D

.field private doNotGroup:Z

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private volatile mDone:Z

.field private mDpiSize:I

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIsEmail:Z

.field private final mIsMulti:Z

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRemindMeLater:Z

.field private mRemindTimeArray:[I

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mTodayFormat:Ljava/lang/CharSequence;

.field private mToolsValue:I

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVoicemailNumber:Ljava/lang/String;

.field private mYesterdayFormat:Ljava/lang/CharSequence;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->buildcarrier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;
    .param p3, "voicemailNumber"    # Ljava/lang/String;
    .param p4, "isMulti"    # Z
    .param p5, "isEmail"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 137
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->NOR_INT:I

    .line 138
    const/16 v3, 0x37

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->SEP_INT:I

    .line 152
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 154
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mVoicemailNumber:Ljava/lang/String;

    .line 219
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    .line 238
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    .line 240
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 241
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 245
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    .line 248
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->doNotGroup:Z

    .line 250
    const-wide v3, 0x4090e00000000000L

    iput-wide v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->FHD_WIDTH:D

    .line 251
    const-wide/high16 v3, 0x407e000000000000L

    iput-wide v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->WVGA_WIDTH:D

    .line 267
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    .line 285
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 288
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mVoicemailNumber:Ljava/lang/String;

    .line 290
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 291
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    .line 292
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 294
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 295
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 297
    .local v0, "callTypeHelper":Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 298
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2, p3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 299
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    .line 301
    .local v1, "phoneCallDetailsHelper":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    .line 304
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    .line 310
    iput-boolean p4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    .line 311
    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsEmail:Z

    .line 312
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDpiSize:I

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;
    .param p3, "voicemailNumber"    # Ljava/lang/String;
    .param p4, "isMulti"    # Z
    .param p5, "isEmail"    # Z
    .param p6, "toolsValue"    # I

    .prologue
    .line 317
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 319
    iput p6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    .line 321
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->doNotGroup:Z

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->doNotGroup:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustListItemLayoutBy7FontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .prologue
    .line 2040
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2041
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2042
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2043
    .local v2, "fontSize":I
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2044
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900ec

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2045
    .local v5, "name_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900e9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2047
    .local v0, "callIndi_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v7, "LogsDeleteAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustListItemLayoutBy7FontSize fontSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mlp.topMargin : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name_mlp.topMargin : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getTextSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2050
    packed-switch v2, :pswitch_data_0

    .line 2109
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2057
    :pswitch_1
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 2058
    const/4 v7, 0x3

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2059
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2064
    :pswitch_2
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 2065
    const/4 v7, -0x3

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2066
    const/high16 v7, -0x3fc00000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2067
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2068
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2072
    :pswitch_3
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 2073
    const/16 v7, -0xc

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2074
    const/high16 v7, -0x3f600000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2076
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2077
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2078
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v7

    .line 2085
    .local v3, "lcdWidth":F
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v6, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2087
    .local v6, "smallestWidthdp":I
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2095
    :pswitch_4
    const/high16 v7, 0x45200000

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_2

    const/high16 v7, 0x44c80000

    cmpl-float v7, v3, v7

    if-nez v7, :cond_3

    :cond_2
    const/16 v7, 0x320

    if-eq v6, v7, :cond_4

    :cond_3
    const/16 v7, 0x258

    if-ne v6, v7, :cond_0

    .line 2096
    :cond_4
    const/4 v7, -0x1

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2097
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2101
    :pswitch_5
    const/high16 v7, 0x45200000

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x44c80000

    cmpl-float v7, v3, v7

    if-nez v7, :cond_6

    :cond_5
    const/16 v7, 0x320

    if-eq v6, v7, :cond_7

    :cond_6
    const/16 v7, 0x258

    if-ne v6, v7, :cond_0

    .line 2102
    :cond_7
    const/16 v7, -0xa

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2103
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2104
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2087
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private adjustListItemLayoutBy7FontSizeDetail(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x320

    const/high16 v12, 0x45200000

    const/high16 v11, 0x44c80000

    .line 2120
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2121
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2122
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2123
    .local v3, "fontSize":I
    const v8, 0x7f09009c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2124
    .local v0, "callTime":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2126
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "LogsDeleteAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adjustListItemLayoutBy7FontSizeDetail fontSize = "

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

    .line 2128
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2129
    packed-switch v3, :pswitch_data_0

    .line 2180
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2138
    :pswitch_1
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x1e0

    if-ne v8, v9, :cond_0

    .line 2139
    const/16 v8, -0xc

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2140
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005d

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2141
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2146
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v8

    .line 2147
    .local v4, "lcdWidth":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2149
    .local v7, "smallestWidthdp":I
    const v8, 0x7f0900a3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2150
    .local v2, "duration":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2152
    .local v6, "mlpDuration":Landroid/view/ViewGroup$MarginLayoutParams;
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 2160
    :pswitch_2
    cmpl-float v8, v4, v12

    if-eqz v8, :cond_2

    cmpl-float v8, v4, v11

    if-nez v8, :cond_0

    .line 2161
    :cond_2
    if-ne v7, v13, :cond_0

    .line 2162
    const/4 v8, -0x8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2163
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110056

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2164
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2169
    :pswitch_3
    cmpl-float v8, v4, v12

    if-eqz v8, :cond_3

    cmpl-float v8, v4, v11

    if-nez v8, :cond_0

    .line 2170
    :cond_3
    if-ne v7, v13, :cond_0

    .line 2171
    const/16 v8, -0x15

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2172
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f11005b

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2173
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2129
    nop

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

    .line 2152
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

.method private adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .prologue
    .line 1936
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1937
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1938
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1939
    .local v2, "fontSize":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v7

    .line 1940
    .local v3, "lcdWidth":F
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1941
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900ec

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1942
    .local v5, "name_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900e9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1943
    .local v0, "callIndi_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v7, 0x7f0900ee

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1944
    .local v6, "number_mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v7, "LogsDeleteAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    packed-switch v2, :pswitch_data_0

    .line 2035
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid font size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1952
    :pswitch_0
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-ne v7, v8, :cond_1

    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v8, 0x43910000

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 1953
    const/16 v7, 0xb

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1954
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110053

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1955
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2033
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1957
    :cond_1
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-ne v7, v8, :cond_3

    .line 1958
    const/16 v7, 0xb

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1959
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110054

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1960
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    const/high16 v7, 0x45200000

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_2

    const/high16 v7, 0x44c80000

    cmpl-float v7, v3, v7

    if-nez v7, :cond_0

    .line 1963
    :cond_2
    const/16 v7, -0xa

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1964
    const/16 v7, 0xa

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1965
    const-string v7, "LogsDeleteAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name_mlp.topMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; name_mlp.bottomMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1969
    :cond_3
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0xf0

    if-eq v7, v8, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 1970
    :cond_4
    const-string v7, "LogsDeleteAdapter"

    const-string v8, "Large"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v7, 0x0

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1972
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110054

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1973
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1977
    :pswitch_2
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-ne v7, v8, :cond_6

    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v8, 0x43910000

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 1978
    const/16 v7, 0x16

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1979
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1980
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110058

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1984
    :goto_1
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1982
    :cond_5
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110057

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 1986
    :cond_6
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-ne v7, v8, :cond_8

    .line 1987
    const-string v7, "LogsDeleteAdapter"

    const-string v8, "huge DENSITY_XHIGH"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/16 v7, 0xb

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1989
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1990
    const v7, 0x7f0900e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1992
    const/high16 v7, 0x45200000

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_7

    const/high16 v7, 0x44c80000

    cmpl-float v7, v3, v7

    if-nez v7, :cond_0

    .line 1993
    :cond_7
    const/4 v7, 0x0

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1994
    const/16 v7, 0x14

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1995
    const/16 v7, 0x32

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1996
    const/16 v7, -0x32

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1997
    const-string v7, "LogsDeleteAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name_mlp.topMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; name_mlp.bottomMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const-string v7, "LogsDeleteAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number_mlp.topMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; number_mlp.bottomMargin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2000
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2004
    :cond_8
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_c

    .line 2005
    const-string v7, "LogsDeleteAdapter"

    const-string v8, "huge DENSITY_HIGH"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    const-string v7, "feature_is_fonblet"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "feature_qhd"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "feature_common_use_multisim"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2007
    :cond_9
    const/16 v7, -0xc

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2008
    const/high16 v7, -0x3f200000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2020
    :goto_2
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2021
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2022
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2010
    :cond_a
    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDpiSize:I

    const/16 v8, 0x140

    if-ne v7, v8, :cond_b

    .line 2011
    const/4 v7, -0x6

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2012
    const/high16 v7, -0x3f400000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 2015
    :cond_b
    const/4 v7, 0x0

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2016
    const/high16 v7, -0x3f200000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 2025
    :cond_c
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x1e0

    if-ne v7, v8, :cond_0

    .line 2026
    const-string v7, "LogsDeleteAdapter"

    const-string v8, "huge DENSITY_XXHIGH"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    const/16 v7, -0xc

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2028
    const/high16 v7, -0x3f200000

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2029
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f110059

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2030
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2031
    iget-object v7, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 90
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 1205
    const-string v5, "LogsDeleteAdapter"

    const-string v19, "========= bindView =========  "

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 1207
    .local v89, "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 1238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 1240
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v19, 0x37

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 1242
    const/16 v81, 0x0

    .line 1243
    .local v81, "mDateText":Ljava/lang/String;
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/RelativeLayout;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    aget-object v81, v5, v19

    .line 1245
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate_text:Landroid/widget/TextView;

    move-object/from16 v0, v81

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    .end local v81    # "mDateText":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    if-nez v5, :cond_1

    .line 1256
    const v5, 0x7f090382

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v85

    check-cast v85, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1257
    .local v85, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const v5, 0x7f09009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    .end local v85    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1261
    .local v6, "number":Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1262
    .local v11, "date":J
    const/4 v5, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1263
    .local v13, "duration":J
    const/16 v5, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v72

    .line 1264
    .local v72, "callType":I
    const/4 v5, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1265
    .local v8, "countryIso":Ljava/lang/String;
    const/16 v5, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1266
    .local v15, "logType":I
    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_b

    const/16 v21, 0x1

    .line 1269
    .local v21, "simnum":I
    :goto_1
    const/16 v5, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1270
    .local v34, "mCnapName":Ljava/lang/String;
    const/16 v5, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1271
    .local v35, "mCdnipNumber":Ljava/lang/String;
    const/16 v5, 0x17

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1274
    .local v33, "mServiceType":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v70

    .line 1277
    .local v70, "cachedContactInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 1278
    .local v77, "firstName":Ljava/lang/String;
    const/16 v5, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 1279
    .local v80, "lastName":Ljava/lang/String;
    const/16 v5, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 1280
    .local v69, "bussName":Ljava/lang/String;
    const/16 v5, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v74

    .line 1281
    .local v74, "cnapName":Ljava/lang/String;
    const/16 v5, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 1282
    .local v73, "cityId":Ljava/lang/String;
    const/4 v5, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 1283
    .local v78, "gedLocation":Ljava/lang/String;
    const/16 v5, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v68

    .line 1284
    .local v68, "simcardId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1286
    const-string v5, "feature_cityid"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1287
    if-eqz v73, :cond_2

    .line 1288
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 1306
    :cond_2
    :goto_2
    new-instance v86, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    move-object/from16 v0, v86

    invoke-direct {v0, v6, v8}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    .local v86, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, v86

    invoke-virtual {v5, v0}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v71

    .line 1309
    .local v71, "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    if-nez v71, :cond_e

    const/16 v79, 0x0

    .line 1310
    .local v79, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1314
    sget-object v79, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 1342
    :cond_3
    :goto_4
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1343
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsEmail:Z

    if-nez v5, :cond_13

    .line 1344
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v68

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1350
    :cond_4
    :goto_5
    const-string v5, "feature_remind_me_later_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getRemindTimeArray()[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    .line 1352
    const/4 v5, 0x1

    move/from16 v0, p3

    if-le v0, v5, :cond_15

    .line 1353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    aget v5, v5, v19

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    .line 1360
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    if-eqz v5, :cond_17

    .line 1361
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const v19, 0x7f020759

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1362
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1370
    :cond_5
    :goto_8
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v50, v0

    .line 1371
    .local v50, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1372
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v0, v79

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v17, v0

    .line 1373
    .local v17, "ntype":I
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1374
    .local v18, "label":Ljava/lang/String;
    move-object/from16 v0, v79

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v87, v0

    .line 1375
    .local v87, "photoId":J
    move-object/from16 v0, v79

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1376
    .local v7, "formattedNumber":Ljava/lang/CharSequence;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v10

    .line 1377
    .local v10, "callTypes":[I
    const/4 v5, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1379
    .local v9, "geocode":Ljava/lang/String;
    const-string v5, "ctc_dual_mode"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1380
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1381
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, -0x1

    const-string v16, ""

    .end local v16    # "name":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, ""

    .end local v17    # "ntype":I
    .end local v18    # "label":Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .line 1418
    .local v4, "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :goto_9
    new-instance v75, Landroid/util/DisplayMetrics;

    invoke-direct/range {v75 .. v75}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1419
    .local v75, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v75

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1422
    const-string v5, "feature_use_7_font_size"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v89

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->adjustListItemLayoutBy7FontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    .line 1432
    :goto_a
    const-string v5, "feature_cnam"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v24, v89

    move-object/from16 v25, v4

    move/from16 v27, p3

    move-object/from16 v28, v74

    move-object/from16 v29, v77

    move-object/from16 v30, v80

    move-object/from16 v31, v69

    move-object/from16 v32, v73

    invoke-virtual/range {v22 .. v32}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :goto_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v19, "CscFeature_Contact_DisableContactPhoto"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1445
    const v5, 0x7f0900e2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    :goto_c
    const-string v5, "feature_common_use_multisim"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1467
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const-string v19, "phone"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v83

    .line 1469
    .local v83, "mVoiceMailNumberSim1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const-string v19, "phone2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v84

    .line 1471
    .local v84, "mVoiceMailNumberSim2":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 1472
    if-eqz v83, :cond_7

    move-object/from16 v0, v83

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v68, :cond_8

    :cond_7
    if-eqz v84, :cond_9

    move-object/from16 v0, v84

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    move/from16 v0, v68

    if-ne v0, v5, :cond_9

    .line 1474
    :cond_8
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v19, 0x7f0e009b

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1475
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    .end local v83    # "mVoiceMailNumberSim1":Ljava/lang/String;
    .end local v84    # "mVoiceMailNumberSim2":Ljava/lang/String;
    :cond_9
    new-instance v82, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;

    move-object/from16 v0, v82

    move-object/from16 v1, p0

    move-object/from16 v2, v89

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    .line 1576
    .local v82, "mHoverListListener":Landroid/widget/HoverPopupWindow$HoverPopupListener;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v19, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v89

    move-object/from16 v3, v82

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_a

    .line 1601
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1605
    :cond_a
    return-void

    .line 1247
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v8    # "countryIso":Ljava/lang/String;
    .end local v9    # "geocode":Ljava/lang/String;
    .end local v10    # "callTypes":[I
    .end local v11    # "date":J
    .end local v13    # "duration":J
    .end local v15    # "logType":I
    .end local v21    # "simnum":I
    .end local v33    # "mServiceType":I
    .end local v34    # "mCnapName":Ljava/lang/String;
    .end local v35    # "mCdnipNumber":Ljava/lang/String;
    .end local v50    # "lookupUri":Landroid/net/Uri;
    .end local v68    # "simcardId":I
    .end local v69    # "bussName":Ljava/lang/String;
    .end local v70    # "cachedContactInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v71    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .end local v72    # "callType":I
    .end local v73    # "cityId":Ljava/lang/String;
    .end local v74    # "cnapName":Ljava/lang/String;
    .end local v75    # "dm":Landroid/util/DisplayMetrics;
    .end local v77    # "firstName":Ljava/lang/String;
    .end local v78    # "gedLocation":Ljava/lang/String;
    .end local v79    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v80    # "lastName":Ljava/lang/String;
    .end local v82    # "mHoverListListener":Landroid/widget/HoverPopupWindow$HoverPopupListener;
    .end local v86    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    .end local v87    # "photoId":J
    :catch_0
    move-exception v76

    .line 1248
    .local v76, "e":Ljava/lang/Exception;
    const-string v5, "LogsDeleteAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception in bindView "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1266
    .end local v76    # "e":Ljava/lang/Exception;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v8    # "countryIso":Ljava/lang/String;
    .restart local v11    # "date":J
    .restart local v13    # "duration":J
    .restart local v15    # "logType":I
    .restart local v72    # "callType":I
    :cond_b
    const/16 v5, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    goto/16 :goto_1

    .line 1291
    .restart local v21    # "simnum":I
    .restart local v33    # "mServiceType":I
    .restart local v34    # "mCnapName":Ljava/lang/String;
    .restart local v35    # "mCdnipNumber":Ljava/lang/String;
    .restart local v68    # "simcardId":I
    .restart local v69    # "bussName":Ljava/lang/String;
    .restart local v70    # "cachedContactInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v73    # "cityId":Ljava/lang/String;
    .restart local v74    # "cnapName":Ljava/lang/String;
    .restart local v77    # "firstName":Ljava/lang/String;
    .restart local v78    # "gedLocation":Ljava/lang/String;
    .restart local v80    # "lastName":Ljava/lang/String;
    :cond_c
    const-string v5, "feature_ged_location"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1292
    const-string v5, "feature_att"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "d2uc"

    sget-object v19, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1293
    if-eqz v73, :cond_2

    .line 1294
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    goto/16 :goto_2

    .line 1296
    :cond_d
    if-eqz v78, :cond_2

    .line 1297
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    goto/16 :goto_2

    .line 1309
    .restart local v71    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .restart local v86    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    :cond_e
    invoke-interface/range {v71 .. v71}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v79, v5

    goto/16 :goto_3

    .line 1315
    .restart local v79    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_f
    if-nez v71, :cond_10

    .line 1316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v19, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v86

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1318
    move-object/from16 v79, v70

    .line 1321
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v6, v8, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto/16 :goto_4

    .line 1324
    :cond_10
    invoke-interface/range {v71 .. v71}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1327
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v6, v8, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 1336
    :cond_11
    :goto_d
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v79

    if-ne v0, v5, :cond_3

    .line 1338
    move-object/from16 v79, v70

    goto/16 :goto_4

    .line 1328
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1333
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v6, v8, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_d

    .line 1346
    :cond_13
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1347
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1353
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1356
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    const/16 v20, 0x1f

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    aput v20, v5, v19

    .line 1357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    aget v5, v5, v19

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    goto/16 :goto_7

    :cond_16
    const/4 v5, 0x0

    goto :goto_e

    .line 1365
    :cond_17
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1385
    .restart local v7    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v9    # "geocode":Ljava/lang/String;
    .restart local v10    # "callTypes":[I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "ntype":I
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v50    # "lookupUri":Landroid/net/Uri;
    .restart local v87    # "photoId":J
    :cond_18
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, -0x1

    const/16 v20, 0x0

    move-object/from16 v19, v50

    invoke-direct/range {v4 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1388
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_19
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1389
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1390
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v36, 0x0

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-wide/from16 v28, v11

    move-wide/from16 v30, v13

    move/from16 v32, v15

    invoke-direct/range {v22 .. v36}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1394
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1a
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v51, 0x0

    const/16 v55, 0x0

    move-object/from16 v36, v4

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move-wide/from16 v42, v11

    move-wide/from16 v44, v13

    move/from16 v46, v15

    move-object/from16 v47, v16

    move/from16 v48, v17

    move-object/from16 v49, v18

    move/from16 v52, v33

    move-object/from16 v53, v34

    move-object/from16 v54, v35

    invoke-direct/range {v36 .. v55}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1397
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1b
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1398
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1399
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v52, -0x1

    const-string v63, ""

    const/16 v64, 0x0

    const-string v65, ""

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v51, v4

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v56, v9

    move-object/from16 v57, v10

    move-wide/from16 v58, v11

    move-wide/from16 v60, v13

    move/from16 v62, v15

    invoke-direct/range {v51 .. v68}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1403
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1c
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v52, -0x1

    const/16 v67, 0x0

    move-object/from16 v51, v4

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v56, v9

    move-object/from16 v57, v10

    move-wide/from16 v58, v11

    move-wide/from16 v60, v13

    move/from16 v62, v15

    move-object/from16 v63, v16

    move/from16 v64, v17

    move-object/from16 v65, v18

    move-object/from16 v66, v50

    invoke-direct/range {v51 .. v68}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1407
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1d
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1408
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object v5, v4

    invoke-direct/range {v5 .. v15}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1412
    .end local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1e
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v20, 0x0

    move-object v5, v4

    move-object/from16 v19, v50

    invoke-direct/range {v5 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v4    # "details":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1425
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "ntype":I
    .end local v18    # "label":Ljava/lang/String;
    .restart local v75    # "dm":Landroid/util/DisplayMetrics;
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v89

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    goto/16 :goto_a

    .line 1434
    :cond_20
    const-string v5, "cnap_text_for_smc_test"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v24, v89

    move-object/from16 v25, v4

    move/from16 v27, p3

    move-object/from16 v28, v74

    invoke-virtual/range {v22 .. v28}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;)V

    goto/16 :goto_b

    .line 1437
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v24, v89

    move-object/from16 v25, v4

    move/from16 v27, p3

    invoke-virtual/range {v22 .. v27}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    goto/16 :goto_b

    .line 1447
    :cond_22
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    move-object/from16 v46, p0

    move-object/from16 v47, v89

    move-wide/from16 v48, v87

    invoke-direct/range {v46 .. v52}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    goto/16 :goto_c
.end method

.method private bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 33
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 969
    const/16 v29, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 970
    .local v17, "duration":J
    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 971
    .local v6, "callType":I
    const/16 v29, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 972
    .local v14, "date":J
    const/16 v29, 0xf

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 973
    .local v23, "logType":I
    const/16 v29, 0x18

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 974
    .local v10, "calloutduration":J
    const/16 v29, 0x16

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 975
    .local v12, "cdnipNumber":Ljava/lang/String;
    const/16 v29, 0x17

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 977
    .local v28, "serviceType":I
    const v29, 0x7f090099

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 978
    .local v16, "detail_date":Landroid/widget/TextView;
    const v29, 0x7f09009c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 979
    .local v5, "callTime":Landroid/widget/TextView;
    const v29, 0x7f0900a3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 980
    .local v19, "durationView":Landroid/widget/TextView;
    const v29, 0x7f0900a1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 981
    .local v24, "logTypeView":Landroid/widget/ImageView;
    const v29, 0x7f0900ab

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 983
    .local v13, "cdnipNumberView":Landroid/widget/TextView;
    const v29, 0x7f09009b

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;

    .line 984
    .local v7, "callTypeIconView":Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->clear()V

    .line 985
    invoke-virtual {v7, v6}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->add(I)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x101

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v0, v14, v15, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 990
    sget-wide v29, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWidth:D

    const-wide/high16 v31, 0x407e000000000000L

    cmpl-double v29, v29, v31

    if-nez v29, :cond_0

    .line 991
    const v29, 0x7f09009a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 992
    .local v22, "itemlayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "font_size"

    const/16 v31, 0x2

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 993
    .local v20, "fontSize":I
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 994
    const/16 v29, 0x0

    const/16 v30, 0x5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1001
    .end local v20    # "fontSize":I
    .end local v22    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x37

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1005
    const/16 v25, 0x0

    .line 1006
    .local v25, "mDateText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    aget-object v25, v29, v30

    .line 1008
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    .end local v25    # "mDateText":Ljava/lang/String;
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1123
    :cond_1
    :goto_2
    const/16 v29, 0x12c

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v29, 0xc8

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 1124
    :cond_2
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    :cond_3
    :goto_3
    const-string v29, "disable_call_duration_information"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1182
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->adjustListItemLayoutBy7FontSizeDetail(Landroid/view/View;)V

    .line 1193
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1194
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1195
    return-void

    .line 996
    .restart local v20    # "fontSize":I
    .restart local v22    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_5
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_0

    .line 1011
    .end local v20    # "fontSize":I
    .end local v22    # "itemlayout":Landroid/widget/RelativeLayout;
    :cond_6
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1017
    :sswitch_0
    const v29, 0x7f020712

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1020
    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    .line 1026
    :sswitch_1
    const v29, 0x7f02070a

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1030
    :sswitch_2
    const v29, 0x7f020700

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1039
    :sswitch_3
    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1040
    const v29, 0x7f020711

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1041
    :cond_7
    const-string v29, "feature_kt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1042
    const v29, 0x7f02070f

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1043
    :cond_8
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1044
    const v29, 0x7f020710

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1046
    :cond_9
    const v29, 0x7f02070e

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1050
    :sswitch_4
    const v29, 0x7f020701

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1053
    :sswitch_5
    const v29, 0x7f020717

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1056
    :sswitch_6
    const v29, 0x7f0206f5

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1059
    :sswitch_7
    const v29, 0x7f0206f4

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1062
    :sswitch_8
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 1064
    const v29, 0x7f020765

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1066
    :cond_a
    const-string v29, "feature_vzw"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string v29, "feature_vzw_sed"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 1067
    const v29, 0x7f020761

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1069
    :cond_b
    const-string v29, "feature_usa_message_icon"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1070
    const v29, 0x7f020760

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1073
    :cond_c
    const v29, 0x7f02075f

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1078
    :sswitch_9
    const-string v29, "feature_cdma_layout"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string v29, "feature_gsm_layout"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 1079
    :cond_d
    const-string v29, "feature_vzw"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    const-string v29, "feature_vzw_sed"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 1080
    const v29, 0x7f020767

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1082
    :cond_e
    const-string v29, "feature_usa_message_icon"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1083
    const v29, 0x7f020766

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1086
    :cond_f
    const v29, 0x7f020764

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1088
    :cond_10
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    const/16 v29, 0x14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 1090
    const v29, 0x7f020765

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1092
    :cond_11
    const v29, 0x7f020764

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1096
    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1097
    const v29, 0x7f020706

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1101
    :sswitch_b
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 1102
    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1103
    const v29, 0x7f020716

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1104
    :cond_12
    const-string v29, "feature_kt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1105
    const-string v29, "feature_wb_amr"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1106
    const v29, 0x7f020712

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1108
    :cond_13
    const v29, 0x7f020713

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1110
    :cond_14
    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1111
    const v29, 0x7f020714

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1113
    :cond_15
    const v29, 0x7f020715

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1116
    :cond_16
    const v29, 0x7f020715

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1126
    :cond_17
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    const-string v29, "feature_ctc"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 1128
    const/16 v27, 0x0

    .line 1129
    .local v27, "mDurationDescription":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1131
    .local v26, "mDuration":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1132
    .local v21, "isCtcDuosForShow":Z
    const-string v29, "feature_chn_duos"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 1133
    const/16 v29, 0x6

    move/from16 v0, v29

    if-ne v6, v0, :cond_19

    .line 1134
    const/16 v21, 0x1

    .line 1141
    :goto_4
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v6, v0, :cond_18

    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v6, v0, :cond_18

    const/16 v29, 0x5

    move/from16 v0, v29

    if-eq v6, v0, :cond_18

    if-eqz v21, :cond_1b

    .line 1142
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e0393

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1152
    :goto_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v26

    .line 1153
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1136
    :cond_19
    const/16 v21, 0x0

    goto :goto_4

    .line 1139
    :cond_1a
    const/16 v21, 0x0

    goto :goto_4

    .line 1144
    :cond_1b
    move-wide v8, v10

    .line 1145
    .local v8, "call_out_duration":J
    const-wide/16 v29, 0x0

    cmp-long v29, v8, v29

    if-eqz v29, :cond_1c

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e0393

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_5

    .line 1149
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0e0392

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_5

    .line 1155
    .end local v8    # "call_out_duration":J
    .end local v21    # "isCtcDuosForShow":Z
    .end local v26    # "mDuration":Ljava/lang/String;
    .end local v27    # "mDurationDescription":Ljava/lang/String;
    :cond_1d
    const-wide/16 v29, 0x0

    cmp-long v29, v17, v29

    if-nez v29, :cond_23

    .line 1156
    const-string v29, "feature_kdi"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 1157
    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v6, v0, :cond_1e

    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v6, v0, :cond_1f

    .line 1158
    :cond_1e
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1160
    :cond_1f
    const v29, 0x7f0e0328

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1162
    :cond_20
    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v6, v0, :cond_21

    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v6, v0, :cond_22

    .line 1163
    :cond_21
    const v29, 0x7f0e0329

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1165
    :cond_22
    const v29, 0x7f0e0328

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1168
    :cond_23
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    const-string v29, "feature_kor"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1170
    if-eqz v12, :cond_24

    .line 1171
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1174
    :cond_24
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1014
    nop

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

    .line 1020
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

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 2
    .param p1, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .param p2, "info"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    .line 1674
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 962
    const-string v1, "LogsDeleteAdapter"

    const-string v2, "========= findAndCacheViews ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

    .line 965
    .local v0, "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 966
    return-void
.end method

.method private static formatArabicDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "elapsedTimeString"    # Ljava/lang/String;

    .prologue
    .line 2236
    const/16 v1, 0x660

    .line 2237
    .local v1, "arabic_zero_unicode":I
    const/16 v0, 0x3a

    .line 2238
    .local v0, "TIME_SEPARATOR":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2240
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2241
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_0

    .line 2242
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2244
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2246
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 2184
    const-wide/16 v1, 0x0

    .line 2185
    .local v1, "hours":J
    const-wide/16 v3, 0x0

    .line 2186
    .local v3, "minutes":J
    const-wide/16 v5, 0x0

    .line 2187
    .local v5, "seconds":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2189
    .local v7, "timeString":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3c

    cmp-long v8, p1, v8

    if-ltz v8, :cond_4

    .line 2190
    const-wide/16 v8, 0x3c

    rem-long v5, p1, v8

    .line 2191
    const-wide/16 v8, 0x3c

    div-long v3, p1, v8

    .line 2193
    const-wide/16 v8, 0x3c

    cmp-long v8, v3, v8

    if-ltz v8, :cond_0

    .line 2194
    const-wide/16 v8, 0x3c

    div-long v1, v3, v8

    .line 2195
    const-wide/16 v8, 0x3c

    rem-long/2addr v3, v8

    .line 2201
    :cond_0
    :goto_0
    const-wide/16 v8, 0xa

    cmp-long v8, v1, v8

    if-gez v8, :cond_1

    .line 2202
    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2204
    :cond_1
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2205
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2207
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_5

    .line 2208
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2209
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_6

    .line 2218
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 2219
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2227
    .local v0, "curLanguage":Ljava/lang/String;
    const-string v8, "ar"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2228
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatArabicDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2231
    :goto_3
    return-object v8

    .line 2199
    .end local v0    # "curLanguage":Ljava/lang/String;
    :cond_4
    move-wide v5, p1

    goto :goto_0

    .line 2215
    :cond_5
    const-string v8, "00:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2224
    :cond_6
    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2231
    .restart local v0    # "curLanguage":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 1833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1834
    const-string p1, ""

    .line 1846
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1837
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1841
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 1843
    :cond_2
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 1780
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1781
    .local v2, "position":I
    new-array v0, p2, [I

    .line 1782
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1783
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1784
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1786
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1787
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1757
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 1758
    .local v0, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 1759
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 1760
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 1761
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 1762
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, "matchedNumber":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "matchedNumber":Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1764
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 1765
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 1766
    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 1767
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1768
    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1769
    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 689
    iget-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsEmail:Z

    if-eqz v9, :cond_0

    .line 690
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForEmail(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .line 710
    .local v1, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_0
    if-nez v1, :cond_4

    .line 742
    :goto_1
    return v8

    .line 693
    .end local v1    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 695
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 696
    .local v3, "sipInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v3, :cond_1

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v3, v9, :cond_2

    .line 698
    :cond_1
    const/16 v9, 0x40

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "username":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 700
    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 703
    .end local v6    # "username":Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 704
    .restart local v1    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 705
    .end local v1    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v3    # "sipInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .restart local v1    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 714
    :cond_4
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v1, v9, :cond_5

    .line 716
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v5}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 717
    .local v5, "updatedInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    iput-object p1, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 718
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 726
    :goto_2
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .local v2, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v9, v2}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 728
    .local v0, "existingInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v4, 0x0

    .line 730
    .local v4, "updated":Z
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    instance-of v9, v9, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    if-eqz v9, :cond_7

    .line 731
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v0, v9, :cond_6

    invoke-virtual {v5, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    move v4, v7

    .line 738
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2, v5}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 741
    invoke-direct {p0, p1, p2, v5, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    move v8, v4

    .line 742
    goto :goto_1

    .line 720
    .end local v0    # "existingInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v2    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    .end local v4    # "updated":Z
    .end local v5    # "updatedInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_5
    move-object v5, v1

    .restart local v5    # "updatedInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_2

    .restart local v0    # "existingInfo":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v2    # "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    .restart local v4    # "updated":Z
    :cond_6
    move v4, v8

    .line 731
    goto :goto_3

    .line 733
    :cond_7
    invoke-virtual {v5, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    move v4, v7

    :goto_4
    goto :goto_3

    :cond_8
    move v4, v8

    goto :goto_4
.end method

.method private queryContactInfoForEmail(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 17
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 539
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v3, v1

    .line 542
    .local v3, "EMAIL_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v10, v1

    .line 546
    .local v10, "CONTACT_PROJECTION":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 547
    .local v12, "emailCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 553
    if-eqz v12, :cond_3

    .line 554
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 555
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 556
    new-instance v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v14}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 557
    .local v14, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 558
    .local v13, "id":I
    iput v13, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 559
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, "lookupkey":Ljava/lang/String;
    int-to-long v1, v13

    invoke-static {v1, v2, v15}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 561
    int-to-long v1, v13

    invoke-static {v1, v2, v15}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 562
    .local v5, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 563
    .local v11, "contactCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 564
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 565
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 567
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 568
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 569
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 570
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 572
    .end local v16    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 578
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v11    # "contactCursor":Landroid/database/Cursor;
    .end local v13    # "id":I
    .end local v15    # "lookupkey":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 582
    :goto_1
    return-object v14

    .line 576
    .end local v14    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_2
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v14    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 580
    .end local v14    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 600
    const/16 v17, 0x0

    .line 603
    .local v17, "phonesCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v14

    .line 606
    .local v14, "mMatchLen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 608
    .local v15, "nLen":I
    const-string v3, "LogsDeleteAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryContactInfoForPhoneNumber] mMatchLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   nLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v13, 0x0

    .line 612
    .local v13, "mIsSpecialNum":Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v13

    .line 613
    const-string v3, "LogsDeleteAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber: mIsSpecialNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-le v15, v14, :cond_1

    if-nez v13, :cond_1

    .line 617
    const-string v3, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 618
    .local v16, "phoneLookup":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 647
    .end local v13    # "mIsSpecialNum":Z
    .end local v14    # "mMatchLen":I
    .end local v15    # "nLen":I
    .end local v16    # "phoneLookup":Landroid/net/Uri;
    :goto_0
    if-eqz v17, :cond_5

    .line 648
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 649
    new-instance v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v11}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 650
    .local v11, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 651
    .local v9, "contactId":J
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 652
    const/4 v3, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 653
    .local v12, "lookupKey":Ljava/lang/String;
    invoke-static {v9, v10, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 654
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 655
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 656
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 657
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 658
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 659
    const/4 v3, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 663
    .end local v9    # "contactId":J
    .end local v12    # "lookupKey":Ljava/lang/String;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 669
    :goto_2
    if-eqz v11, :cond_0

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v11, v3, :cond_0

    .line 670
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 672
    :cond_0
    return-object v11

    .line 625
    .end local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v13    # "mIsSpecialNum":Z
    .restart local v14    # "mMatchLen":I
    .restart local v15    # "nLen":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 633
    .end local v13    # "mIsSpecialNum":Z
    .end local v14    # "mMatchLen":I
    .end local v15    # "nLen":I
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 639
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 661
    :cond_4
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto/16 :goto_1

    .line 666
    .end local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto/16 :goto_2
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 13
    .param p1, "sipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 470
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 481
    .local v1, "contactRef":Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 484
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 486
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 494
    .local v8, "dataTableCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 495
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 506
    .local v9, "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 508
    .local v6, "contactId":J
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 510
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 513
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 516
    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 517
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 521
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 522
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 523
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 528
    .end local v6    # "contactId":J
    .end local v10    # "lookupKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 533
    :goto_1
    return-object v9

    .line 526
    .end local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_0
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 531
    .end local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "info":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .locals 7
    .param p1, "views"    # Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "randomSeed"    # J

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 1793
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    move-wide v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    .line 1795
    return-void
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 379
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "updatedInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .param p4, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1682
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1683
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1685
    .local v0, "needsUpdate":Z
    if-eqz p4, :cond_8

    .line 1686
    iget-object v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1687
    const-string v2, "name"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const/4 v0, 0x1

    .line 1691
    :cond_0
    iget v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    .line 1692
    const-string v2, "numbertype"

    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1693
    const/4 v0, 0x1

    .line 1696
    :cond_1
    iget-object v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1697
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const/4 v0, 0x1

    .line 1700
    :cond_2
    iget-object v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1701
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/4 v0, 0x1

    .line 1710
    :cond_3
    iget-object v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1711
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const/4 v0, 0x1

    .line 1714
    :cond_4
    iget-wide v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 1715
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1716
    const/4 v0, 0x1

    .line 1718
    :cond_5
    iget-object v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1719
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const/4 v0, 0x1

    .line 1722
    :cond_6
    iget v2, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    iget v3, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    if-eq v2, v3, :cond_7

    .line 1723
    const-string v2, "contactid"

    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    const/4 v0, 0x1

    .line 1740
    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 1753
    :goto_1
    return-void

    .line 1728
    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v2, "numbertype"

    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1730
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1735
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v2, "contactid"

    iget v3, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1737
    const/4 v0, 0x1

    goto :goto_0

    .line 1744
    :cond_9
    if-nez p2, :cond_a

    .line 1745
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1749
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 1816
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 1818
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 804
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->doNotGroup:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;Z)V

    .line 806
    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 901
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 903
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 906
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "groupSize"    # I
    .param p5, "expanded"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 954
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 956
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 959
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 851
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v1, 0x226

    if-ne v0, v1, :cond_0

    .line 853
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindViewDetail(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 856
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-direct {p0, p1, p3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    .line 1806
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .param p4, "immediate"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    .line 443
    .local v0, "request":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 448
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    .line 450
    :cond_1
    return-void

    .line 448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 1860
    const/4 v11, 0x0

    .line 1862
    .local v11, "matchingNumber":Ljava/lang/String;
    new-instance v13, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    .local v13, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v2, v13}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 1864
    .local v8, "ci":Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v8, :cond_3

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v8, v2, :cond_3

    .line 1865
    iget-object v11, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1922
    :cond_0
    :goto_0
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "+"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1925
    :cond_1
    move-object/from16 p1, v11

    .line 1927
    :cond_2
    return-object p1

    .line 1868
    :cond_3
    const/4 v15, 0x0

    .line 1871
    .local v15, "phonesCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v10

    .line 1874
    .local v10, "mMatchLen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1876
    .local v12, "nLen":I
    const-string v2, "LogsDeleteAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBetterNumberFromContacts] mMatchLen :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t nLen :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v9, 0x0

    .line 1880
    .local v9, "mIsSpecialNum":Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v9

    .line 1881
    const-string v2, "LogsDeleteAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBetterNumberFromContacts: mIsSpecialNum"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    if-le v12, v10, :cond_5

    if-nez v9, :cond_5

    .line 1885
    const-string v2, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1886
    .local v14, "phoneLookup":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1912
    .end local v9    # "mIsSpecialNum":Z
    .end local v10    # "mMatchLen":I
    .end local v12    # "nLen":I
    .end local v14    # "phoneLookup":Landroid/net/Uri;
    :goto_1
    if-eqz v15, :cond_0

    .line 1913
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1914
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1916
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1918
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1893
    .restart local v9    # "mIsSpecialNum":Z
    .restart local v10    # "mMatchLen":I
    .restart local v12    # "nLen":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_1

    .line 1901
    .end local v9    # "mIsSpecialNum":Z
    .end local v10    # "mMatchLen":I
    .end local v12    # "nLen":I
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "phone_lookup_with_profile"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_1

    .line 1906
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    goto :goto_1
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRemindTimeArray()[I
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    return-object v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1810
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    .local v0, "numberCountryIso":Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1812
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->unregisterPreDrawListener()V

    .line 387
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 861
    const-string v3, "LogsDeleteAdapter"

    const-string v4, "========= newChildView ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 865
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 866
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 867
    .local v1, "simcard_image":Landroid/widget/ImageView;
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v4, 0x226

    if-ne v3, v4, :cond_1

    .line 868
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    const v3, 0x7f040014

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 895
    :goto_0
    return-object v2

    .line 871
    :cond_0
    const v3, 0x7f040010

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 874
    :cond_1
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 875
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_3

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 876
    const v3, 0x7f04018b

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 893
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    goto :goto_0

    .line 878
    :cond_3
    const v3, 0x7f04018a

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 881
    :cond_4
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 882
    const v3, 0x7f04018d

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 886
    :goto_2
    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 887
    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "simcard_image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 888
    .restart local v1    # "simcard_image":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 889
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 884
    :cond_5
    const v3, 0x7f040189

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 911
    const-string v3, "LogsDeleteAdapter"

    const-string v4, "========= newGroupView ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 916
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 917
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 919
    .local v1, "simcard_image":Landroid/widget/ImageView;
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v4, 0x226

    if-ne v3, v4, :cond_1

    .line 920
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    const v3, 0x7f040014

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 947
    :goto_0
    return-object v2

    .line 923
    :cond_0
    const v3, 0x7f040010

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 926
    :cond_1
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 927
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_3

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 928
    const v3, 0x7f04018b

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 945
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    goto :goto_0

    .line 930
    :cond_3
    const v3, 0x7f04018a

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 933
    :cond_4
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 934
    const v3, 0x7f04018d

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 938
    :goto_2
    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "simcard_image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 940
    .restart local v1    # "simcard_image":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 941
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 936
    :cond_5
    const v3, 0x7f040189

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 811
    const-string v3, "LogsDeleteAdapter"

    const-string v4, "========= newStandAloneView ========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 814
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 815
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 817
    .local v1, "simcard_image":Landroid/widget/ImageView;
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mToolsValue:I

    const/16 v4, 0x226

    if-ne v3, v4, :cond_1

    .line 818
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    const v3, 0x7f040014

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 845
    :goto_0
    return-object v2

    .line 821
    :cond_0
    const v3, 0x7f040010

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 824
    :cond_1
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 825
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_3

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    const v3, 0x7f04018b

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 843
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    goto :goto_0

    .line 828
    :cond_3
    const v3, 0x7f04018a

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 831
    :cond_4
    const-string v3, "feature_tablet_selection_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 832
    const v3, 0x7f04018d

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 836
    :goto_2
    const-string v3, "feature_marvell_dsds"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 837
    const v3, 0x7f0900ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "simcard_image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 838
    .restart local v1    # "simcard_image":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 839
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 834
    :cond_5
    const v3, 0x7f040189

    invoke-virtual {v0, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->unregisterPreDrawListener()V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    .line 329
    return-void
.end method

.method protected setScrollState(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setScrollState(I)V

    .line 2117
    return-void
.end method

.method public declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;->stopProcessing()V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_0
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "city_id"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2c

    const/4 v8, 0x0

    .line 391
    const/4 v4, 0x1

    .line 392
    .local v4, "orientation":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 393
    .local v2, "configuration":Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 394
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 397
    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 400
    .local v3, "len_city":I
    const/16 v0, 0x11

    .line 402
    .local v0, "MAX_LEN":I
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 403
    const/16 v0, 0xf

    .line 409
    :cond_1
    :goto_0
    if-lt v3, v0, :cond_2

    .line 411
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v3, -0x4

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "city_name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "state_abbr":Ljava/lang/String;
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    .end local v0    # "MAX_LEN":I
    .end local v1    # "city_name":Ljava/lang/String;
    .end local v3    # "len_city":I
    .end local v5    # "state_abbr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 405
    .restart local v0    # "MAX_LEN":I
    .restart local v3    # "len_city":I
    :cond_3
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 406
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 418
    .restart local v1    # "city_name":Ljava/lang/String;
    .restart local v5    # "state_abbr":Ljava/lang/String;
    :cond_4
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 421
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xc

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
